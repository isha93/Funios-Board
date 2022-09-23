//
//  ListDotaHeroViewController.swift
//  Funios-Board
//
//  Created by Ade Dwi Prayitno on 21/09/22.
//

import UIKit

class ListDotaHeroViewController: UIViewController {
    
    @IBOutlet weak var listDotaHeroTableView: UITableView!
    
    private var dotaHeroes: DotaModel = []
    private var dotaServices: DotaServices = DotaServices()
    private var prefs: UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Task{
            await getDotaHeroes()
        }
        
        dotaHeroes = getDotaHeroesData()
        
        setupDelegate()
    }

}

//MARK: Delegate
extension ListDotaHeroViewController{
    func setupDelegate(){
        self.listDotaHeroTableView.dataSource = self
        self.listDotaHeroTableView.delegate = self
        self.listDotaHeroTableView.register(UINib(nibName: "ListDotaHeroTableViewCell", bundle: nil), forCellReuseIdentifier: "DotaHeroesCell")
    }
}

//MARK: TableViewDataSource
extension ListDotaHeroViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dotaHeroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = listDotaHeroTableView.dequeueReusableCell(withIdentifier: "DotaHeroesCell") as? ListDotaHeroTableViewCell
        else{return UITableViewCell()}
        let hero = dotaHeroes[indexPath.row]
        cell.setupData(heroName: hero.localizedName, heroPrimaryAttr: hero.primaryAttr.rawValue)
        return cell
    }
}

//MARK: TableViewDelegate
extension ListDotaHeroViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

//MARK: Networking
extension ListDotaHeroViewController{
    func getDotaHeroes() async{
        do{
            let dotaHeroesData = try await dotaServices.getHeroes(endPoint: .getHeroes)
            setDotaHeroesDataOffline(with: dotaHeroesData)
        }catch{
            print(error)
        }
        
    }
}

//MARK: UserDefault -> Menyimpan data
extension ListDotaHeroViewController{
    func setDotaHeroesDataOffline(with data: DotaModel){
        if let encoded = try? JSONEncoder().encode(data) {
            UserDefaults.standard.set(encoded, forKey: "dotaHeroes")
        }
    }
    
    func getDotaHeroesData() -> DotaModel{
        if let data = UserDefaults.standard.object(forKey: "dotaHeroes") as? Data,
           let decodedData = try? JSONDecoder().decode(DotaModel.self, from: data) {
             return decodedData
        }
        return DotaModel()
    }
}
