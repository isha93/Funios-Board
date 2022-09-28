//
//  HomeViewModel.swift
//  Funios-Board
//
//  Created by Mohammad Azri on 17/08/22.
//

import Foundation

class HomeViewModel {
    enum Item {
        case dotaHeroes
        case dummyTransaction
    }
    
    private let dotaServiceProtocol: DotaServicesNetworkModel
    var item : [Item] = [Item]()
    
    init(dotaServiceProtocol: DotaServicesNetworkModel) {
        self.dotaServiceProtocol = dotaServiceProtocol
    }
    
    func retrieveDotaHeroes() async -> Result<[DotaModel], Error> {
        do {
            let heroes = try await dotaServiceProtocol.getDotaHeroes(endPoint: .getDotaHeroes)
            
            if !heroes.isEmpty {
                heroes.enumerated().forEach { index, _ in
                    item.append(.dotaHeroes)
                }
            } else {
                dummyTransaction.enumerated().forEach { index, _ in
                    item.append(.dummyTransaction)
                }
            }
            
            return .success(heroes)
        } catch {
            dummyTransaction.enumerated().forEach { index, _ in
                item.append(.dummyTransaction)
            }
            return .failure(error)
        }
    }
    
    func getDataLength() -> Int {
        return item.count
    }
}
