//
//  NetworkRequest.swift
//  FlightInfo
//
//  Created by Nayem BJIT on 4/13/18.
//  Copyright © 2018 Pure Creek. All rights reserved.
//

import Foundation

protocol NetworkRequest {
    associatedtype Model: Codable
    func fetch(with request: URLRequest, decode: @escaping (Decodable)-> Model?, completion: @escaping (Result<Model, APIError>)-> ())
}

extension NetworkRequest {
    var session: URLSession {
        return URLSession(configuration: .ephemeral)
    }

    func fetch(with request: URLRequest, decode: @escaping (Decodable)-> Model?, completion: @escaping (Result<Model, APIError>)-> ()) {
        let task = decodingTask(with: request) { (json, error) in
            // MARK:- change to main queue
            DispatchQueue.main.async {
                guard let json = json else {
                    if let error = error {
                        completion(.failure(error))
                    } else {
                        completion(.failure(.invalidData))
                    }
                    return
                }
                if let value = decode(json) {
                    completion(.success(value))
                } else {
                    completion(.failure(.jsonParsingFailure))
                }
            }
        }
        task.resume()
    }
    
    private func decodingTask(with request: URLRequest, completion: @escaping (Decodable?, APIError?)-> ())-> URLSessionDataTask {
        let task = session.dataTask(with: request) { (data, response, error) in
            guard let response = response as? HTTPURLResponse else {
                completion(nil, .requestFailed)
                return
            }
            if response.statusCode == 200 {
                if let data = data {
                    do {
                        let decoder = JSONDecoder()
                        decoder.dateDecodingStrategy = .iso8601
                        let genericModel = try decoder.decode(Model.self, from: data)
                        completion(genericModel, nil)
                    } catch DecodingError.typeMismatch {
                        completion(nil, APIError.jsonParsingFailure)
                    } catch {
                        print(error.localizedDescription)
                        completion(nil, APIError.jsonConversionFailure)
                    }
                } else {
                    completion(nil, .invalidData)
                }
            } else {
                completion(nil, .responseUnsuccessful)
            }
        }
        return task
    }
}
