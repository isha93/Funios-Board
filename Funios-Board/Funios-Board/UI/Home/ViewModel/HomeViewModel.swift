//
//  HomeViewModel.swift
//  Funios-Board
//
//  Created by Mohammad Azri on 17/08/22.
//

import Foundation

class HomeViewModel {
    //MARK: - Public Properties
    
    //MARK: - Private Properties
    private let userDefault: UserDefaults
    private let dotaServiceProtocol: DotaServicesNetworkModel
    private var item : [Item] = []
    private var heroes: [DotaModel] = []
    
    init(dotaServiceProtocol: DotaServicesNetworkModel, userDefault: UserDefaults) {
        self.dotaServiceProtocol = dotaServiceProtocol
        self.userDefault = userDefault
    }
    
    //MARK: - Public Functions
    func retrieveDotaHeroes() async -> Result<[DotaModel], Error> {
        let localHeroes = isLocalDotaHeroesExist()
        if !localHeroes.isEmpty {
            addItemHeroes(.dotaHeroes(localHeroes), localHeroes)
            self.heroes = localHeroes
            return .success(localHeroes)
        }
        
        do {
            let heroes = try await dotaServiceProtocol.getDotaHeroes(endPoint: .getDotaHeroes)
            self.heroes = heroes
            heroes.isEmpty ? addItemDummy(.dummyTransaction, dummyTransaction) : addItemHeroes(heroes.isEmpty ? .dummyTransaction : .dotaHeroes(heroes), heroes)
            saveHeroesToLocalDataSource(heroes)
            
            return .success(heroes)
        } catch {
            addItemDummy(.dummyTransaction, dummyTransaction)
            return .failure(error)
        }
    }
    
    func getDataLength() -> Int {
        return item.count
    }
    
    func getItems() -> [Item] {
        return self.item
    }
    
    func getHeroes() -> [DotaModel] {
        return self.heroes
    }
    
    func randomHeroesFilter() {
        let primaryAttribute : [PrimaryAttribute] = [.int, .agi, .str]
        let randomAttribute = primaryAttribute.randomElement()
        
        let dummy = heroes.filter { hero in
            return hero.attribute ==  randomAttribute
        }
        
        addItemHeroes(.dotaHeroes(dummy), dummy)
    }
    
    //MARK: - Private Functions
    private func addItemHeroes(_ item: Item, _ datas : [DotaModel]) {
        self.item = []
        datas.forEach { _ in
            self.item.append(item)
        }
    }
    
    private func addItemDummy(_ item: Item, _ datas : [Transaction]) {
        datas.forEach { _ in
            self.item.append(item)
        }
    }
    
    private func isLocalDotaHeroesExist() -> [DotaModel] {
        if let data = userDefault.data(forKey: "heroes") {
            do {
                let decoder = JSONDecoder()
                let localHeroes = try decoder.decode([DotaModel].self, from: data)
                return localHeroes
            } catch {
                print("Unable to decode \(error)")
            }
        }
        
        return []
    }
    
    private func saveHeroesToLocalDataSource(_ datas : [DotaModel]) {
        do {
            let localHeroes = try JSONEncoder().encode(datas)
            userDefault.set(localHeroes, forKey: "heroes")
            print(localHeroes)
        } catch {
            print("saveHeroesToLocalDataSource \(error)")
        }
    }
}

extension HomeViewModel {
    enum Item {
        case dotaHeroes([DotaModel])
        case dummyTransaction
    }
}
