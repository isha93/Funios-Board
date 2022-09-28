//
//  DotaServicesDefaultNetworkModel.swift
//  Funios-Board
//
//  Created by Mohammad Azri on 28/09/22.
//

import Foundation

final class DotaServicesDefaultNetworkModel : DotaServicesNetworkModel {
    var networker: NetworkerProtocol
    
    init(networker: NetworkerProtocol = Networker()) {
        self.networker = networker
    }
    
    func getDotaHeroes(endPoint : NetworkFactory) async throws -> [DotaModel] {
        return try await networker.taskAsync(
            type: [DotaModel].self,
            endPoint: endPoint,
            isMultipart: false
        )
    }
}
