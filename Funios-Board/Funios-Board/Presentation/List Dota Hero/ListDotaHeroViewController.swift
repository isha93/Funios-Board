//
//  ListDotaHeroViewController.swift
//  Funios-Board
//
//  Created by Ade Dwi Prayitno on 21/09/22.
//

import UIKit

class ListDotaHeroViewController: UIViewController {
    
    @IBOutlet weak var listDotaHeroTableView: UITableView!
    
    var dotaHeroes: DotaModel = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupDelegate()
    }

}

//MARK: Delegate
extension ListDotaHeroViewController{
    func setupDelegate(){
        self.listDotaHeroTableView.dataSource = self
        self.listDotaHeroTableView.delegate = self
    }
}

//MARK: TableViewDataSource
extension ListDotaHeroViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dotaHeroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

//MARK: TableViewDelegate
extension ListDotaHeroViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
