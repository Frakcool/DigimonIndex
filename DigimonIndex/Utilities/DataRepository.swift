//
//  DataRepository.swift
//  DigimonIndex
//
//  Created by Jesús Sánchez on 13/05/22.
//

import Foundation
import Moya

protocol DataRepositoryProtocol {
    func getAllDigimon()
    func getAllDigimonBy(name: String)
    func getAllDigimonBy(level: String)
}

class DataRepository: DataRepositoryProtocol {
    private let provider = MoyaProvider<NetworkService>()

    func getAllDigimon() {
        provider.request(.getDigimons) { result in
            print("WOLOLO")

            switch result {
            case let .success(response):
                print(response.data)
            case let .failure(error):
                print(error)
            }
        }
    }

    func getAllDigimonBy(name: String) {
        provider.request(.getDigimonsByName(name: name)) { result in
            print("ROGAN?")
        }
    }

    func getAllDigimonBy(level: String) {
        provider.request(.getDigimonsByLevel(level: level)) { result in
            print("BATMAN!")
        }
    }
}
