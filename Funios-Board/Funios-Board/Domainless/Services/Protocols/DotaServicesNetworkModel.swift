//
//  DotaServices.swift
//  Funios-Board
//
//  Created by Mohammad Azri on 28/09/22.
//

import Foundation

protocol DotaServicesNetworkModel {
    var networker: NetworkerProtocol { get }
    func getDotaHeroes(endPoint : NetworkFactory) async throws -> [DotaModel]
}
