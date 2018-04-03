//: Playground - noun: a place where people can play

import Foundation

let jsonData = """
{
                "flights": [
              {
                "airline": "Aeroflot",
                "number": "AF 3245",
                "departure": {
                  "date": "2018-04-01T04:00:00-08:00",
                  "airport": {
                    "symbol": "AMS",
                    "name": "Schipol",
                    "city": "Amsterdam"
                  }
                },
                "arrival": {
                  "date": "2018-04-01T07:15:00-08:00",
                  "airport": {
                    "symbol": "SVO",
                    "name": "Sheremetyevo",
                    "city": "Moscow"
                  }
                }
              },
              {
                "airline": "Swissair",
                "number": "SR 3890",
                "departure": {
                  "date": "2018-04-01T04:00:00-08:00",
                  "airport": {
                    "symbol": "DHT",
                    "name": "Dalhart Municipal",
                    "city": "Dalhart"
                  }
                },
                "arrival": {
                  "date": "2018-04-01T07:15:00-08:00",
                  "airport": {
                    "symbol": "DLC",
                    "name": "Zhoushuizi",
                    "city": "Dalian"
                  }
                }
              },
              {
                "airline": "Singapore Airlines",
                "number": "SQ 245",
                "departure": {
                  "date": "2018-04-01T04:00:00-08:00",
                  "airport": {
                    "symbol": "KTKI",
                    "name": "Collin County Regional At Mc Kinney",
                    "city": "Dallas"
                  }
                },
                "arrival": {
                  "date": "2018-04-01T07:15:00-08:00",
                  "airport": {
                    "symbol": "JMD",
                    "name": "Market Centre H/P",
                    "city": "Dallas"
                  }
                }
              },
              {
                "airline": "Silk Air",
                "number": "MI 7301",
                "departure": {
                  "date": "2018-04-01T04:00:00-08:00",
                  "airport": {
                    "symbol": "EDWC",
                    "name": "Damme",
                    "city": "Damme"
                  }
                },
                "arrival": {
                  "date": "2018-04-01T07:15:00-08:00",
                  "airport": {
                    "symbol": "DFW",
                    "name": "Dallas Fort Worth International",
                    "city": "Dallas-Fort Worth"
                  }
                }
              },
              {
                "airline": "Singapore Airlines",
                "number": "SQ 351",
                "departure": {
                  "date": "2018-04-01T04:00:00-08:00",
                  "airport": {
                    "symbol": "DBU",
                    "name": "Dambulu Oya Tank Seaplane Base",
                    "city": "Dambulla"
                  }
                },
                "arrival": {
                  "date": "2018-04-01T07:15:00-08:00",
                  "airport": {
                    "symbol": "YDH",
                    "name": "Daniels Harbour",
                    "city": "Daniels Harbour"
                  }
                }
              },
              {
                "airline": "Qatar Airways",
                "number": "QR 735",
                "departure": {
                  "date": "2018-04-01T04:00:00-08:00",
                  "airport": {
                    "symbol": "EKHV",
                    "name": "Haderslev",
                    "city": "Haderslev"
                  }
                },
                "arrival": {
                  "date": "2018-04-01T07:15:00-08:00",
                  "airport": {
                    "symbol": "AYHW",
                    "name": "Haewenai Airstrip",
                    "city": "Haewenai"
                  }
                }
              },
              {
                "airline": "Qatar Airways",
                "number": "QR 115",
                "departure": {
                  "date": "2018-04-01T04:00:00-08:00",
                  "airport": {
                    "symbol": "94NJ",
                    "name": "Pio Costa Sand & Gravel",
                    "city": "Hackettstown/Great Meadows"
                  }
                },
                "arrival": {
                  "date": "2018-04-01T07:15:00-08:00",
                  "airport": {
                    "symbol": "0LA0",
                    "name": "West Hackberry",
                    "city": "Hackberry"
                  }
                }
              },
              {
                "airline": "Singapore Airlines",
                "number": "SQ 914",
                "departure": {
                  "date": "2018-04-01T04:00:00-08:00",
                  "airport": {
                    "symbol": "OKA",
                    "name": "Naha",
                    "city": "Naha"
                  }
                },
                "arrival": {
                  "date": "2018-04-01T07:15:00-08:00",
                  "airport": {
                    "symbol": "NBO",
                    "name": "Jomo Kenyatta International",
                    "city": "Nairobi"
                  }
                }
              },
              {
                "airline": "Aeroflot",
                "number": "AF 3245",
                "departure": {
                  "date": "2018-04-01T04:00:00-08:00",
                  "airport": {
                    "symbol": "NBR",
                    "name": "Nambour",
                    "city": "Nambour"
                  }
                },
                "arrival": {
                  "date": "2018-04-01T07:15:00-08:00",
                  "airport": {
                    "symbol": "KHN",
                    "name": "Nanchang Changbei International",
                    "city": "Nanchang"
                  }
                }
              },
              {
                "airline": "Aeroflot",
                "number": "AF 3245",
                "departure": {
                  "date": "2018-04-01T04:00:00-08:00",
                  "airport": {
                    "symbol": "CCQ",
                    "name": "Cachoeira",
                    "city": "Cachoeira"
                  }
                },
                "arrival": {
                  "date": "2018-04-01T07:15:00-08:00",
                  "airport": {
                    "symbol": "EGCK",
                    "name": "Caernarfon",
                    "city": "Caernarfon"
                  }
                }
              },
              {
                "airline": "Singapore Airlines",
                "number": "SQ 245",
                "departure": {
                  "date": "2018-04-01T04:00:00-08:00",
                  "airport": {
                    "symbol": "SNCL",
                    "name": "Lorenzo",
                    "city": "Cairu"
                  }
                },
                "arrival": {
                  "date": "2018-04-01T07:15:00-08:00",
                  "airport": {
                    "symbol": "CTO",
                    "name": "Calverton Executive Airpark",
                    "city": "Calverton"
                  }
                }
              },
              {
                "airline": "Luxair",
                "number": "LG 110",
                "departure": {
                  "date": "2018-04-01T04:00:00-08:00",
                  "airport": {
                    "symbol": "CGE",
                    "name": "Cambridge Dorchester",
                    "city": "Cambridge"
                  }
                },
                "arrival": {
                  "date": "2018-04-01T07:15:00-08:00",
                  "airport": {
                    "symbol": "CMT",
                    "name": "New Cametá",
                    "city": "Cametá"
                  }
                }
              },
              {
                "airline": "Japan Asia Airways",
                "number": "EG 9826",
                "departure": {
                  "date": "2018-04-01T04:00:00-08:00",
                  "airport": {
                    "symbol": "ROR",
                    "name": "Babelthuap",
                    "city": "Babelthuap Island"
                  }
                },
                "arrival": {
                  "date": "2018-04-01T07:15:00-08:00",
                  "airport": {
                    "symbol": "BXD",
                    "name": "Bade",
                    "city": "Bade-Papua Island"
                  }
                }
              },
              {
                "airline": "Luxair",
                "number": "LG 888",
                "departure": {
                  "date": "2018-04-01T04:00:00-08:00",
                  "airport": {
                    "symbol": "BFX",
                    "name": "Bafoussam",
                    "city": "Bafoussam"
                  }
                },
                "arrival": {
                  "date": "2018-04-01T07:15:00-08:00",
                  "airport": {
                    "symbol": "BAG",
                    "name": "Loakan",
                    "city": "Baguio City"
                  }
                }
              },
              {
                "airline": "Japan Asia Airways",
                "number": "EG 4545",
                "departure": {
                  "date": "2018-04-01T04:00:00-08:00",
                  "airport": {
                    "symbol": "UAOL",
                    "name": "Krainiy",
                    "city": "Baikonur"
                  }
                },
                "arrival": {
                  "date": "2018-04-01T07:15:00-08:00",
                  "airport": {
                    "symbol": "HYF",
                    "name": "Hayfields",
                    "city": "Bainyik"
                  }
                }
              },
              {
                "airline": "Luxair",
                "number": "LG 555",
                "departure": {
                  "date": "2018-04-01T04:00:00-08:00",
                  "airport": {
                    "symbol": "BJN",
                    "name": "Bajone",
                    "city": "Bajone"
                  }
                },
                "arrival": {
                  "date": "2018-04-01T07:15:00-08:00",
                  "airport": {
                    "symbol": "BKE",
                    "name": "Baker City Municipal",
                    "city": "Baker City"
                  }
                }
              },
              {
                "airline": "Singapore Airlines",
                "number": "SQ 774",
                "departure": {
                  "date": "2018-04-01T04:00:00-08:00",
                  "airport": {
                    "symbol": "SVO",
                    "name": "Sheremetyevo",
                    "city": "Moscow"
                  }
                },
                "arrival": {
                  "date": "2018-04-01T07:15:00-08:00",
                  "airport": {
                    "symbol": "AMS",
                    "name": "Schipol",
                    "city": "Amsterdam"
                  }
                }
              }
            ]
            }
""".data(using: .utf8)!


struct Airport: Codable {
    let symbol: String
    let name: String
    let city: String
}

struct Endpoint: Codable {
    let date: Date
    let airport: Airport
}

struct Flight: Codable {
    let airline: String
    let number: String
    let departure: Endpoint
    let arrival: Endpoint

    var duration: TimeInterval {
        return arrival.date.timeIntervalSince(departure.date)
    }
}

struct Root: Codable {
    let flights: [Flight]
}

do {
    let decoder = JSONDecoder()
    decoder.dateDecodingStrategy = .iso8601
    let flights = try decoder.decode(Root.self, from: jsonData)
    print(flights.flights)
} catch {
    print(error)
}

