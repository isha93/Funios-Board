//
//  HomeViewModel.swift
//  Funios-Board
//
//  Created by Mohammad Azri on 17/08/22.
//

import Foundation

class HomeViewModel {
    private var dotaServicesDefaultNetworkMdoel = DotaServicesDefaultNetworkModel()
    
    func getDotaHeroes() async -> Result<[DotaModel], Error> {
        do {
            let heroes = try await dotaServicesDefaultNetworkMdoel.getDotaHeroes(endPoint: .getDotaHeroes)
            return .success(heroes)
        } catch {
            return .failure(error)
        }
    }
}
