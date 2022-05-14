//
//  NetworkService.swift
//  DigimonIndex
//
//  Created by Jesús Sánchez on 13/05/22.
//

import Foundation
import Moya

enum NetworkService {
    case getDigimons
    case getDigimonsByName(name: String)
    case getDigimonsByLevel(level: String)
}

extension NetworkService: TargetType {
    var baseURL: URL { URL(string: "https://digimon-api.vercel.app/api/digimon")! }
    var path: String {
        switch self {
        case .getDigimons:
            return "/api/digimon"
        case .getDigimonsByName(let name):
            return "/api/digimon/name/\(name)"
        case .getDigimonsByLevel(let level):
            return "/api/digimon/level/\(level)"
        }
        var method: Moya.Method {
            return .get
        }
        var task: Task {
            return .requestPlain
        }
        var sampleData: Data {
            return Data()
        }
        var headers: [String: String]? {
            return ["Content-type": "application/json"]
        }
    }
}


// MARK: - Helpers
private extension String {
    var urlEscaped: String {
        addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
    }

    var utf8Encoded: Data { Data(self.utf8) }
}
