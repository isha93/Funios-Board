//
//  HomeViewController.swift
//  Funios-Board
//
//  Created by Ade Dwi Prayitno on 11/08/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var userProfileImageView: UIImageView!
    @IBOutlet weak var transferButton: UIButton!
    @IBOutlet weak var topupButton: UIButton!
    @IBOutlet weak var transactionTableView: UITableView!
    
    var transactionDummy: Array<Transaction>? = [
        Transaction(name: "Monkey D. Luffy", profilePicture: "luffy", type: "Transfer", amount: "500.000"),
        Transaction(name: "Tony Tony Chopper", profilePicture: "chopper", type: "Subsciption", amount: "100.000"),
        Transaction(name: "Jinbei", profilePicture: "jinbei", type: "Transfer", amount: "280.000"),
        Transaction(name: "Nami", profilePicture: "nami", type: "Transfer", amount: "484.000"),
        Transaction(name: "Vinsmoke Sanji", profilePicture: "sanji", type: "Subsciption", amount: "190.000"),
        Transaction(name: "Brook", profilePicture: "brook", type: "Transfer", amount: "130.000"),
        Transaction(name: "Usopp", profilePicture: "usopp", type: "Subsciption", amount: "143.000"),
        Transaction(name: "Nico Robin", profilePicture: "robin", type: "Subsciption", amount: "243.000"),
        Transaction(name: "Franky", profilePicture: "franky", type: "Subsciption", amount: "303.000"),
    ]
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()
        setupDelegate()
    }

}

//MARK: - Setup Delegate
extension HomeViewController{
    private func setupDelegate() {
        self.transactionTableView.dataSource = self
        self.transactionTableView.delegate = self
        self.transactionTableView.register(UINib(nibName: "TransactionHistoryTableViewCell", bundle: nil), forCellReuseIdentifier: "TransactionCell")
    }
}


//MARK: - Setup Layout
extension HomeViewController{
    func setupLayout(){
        cardView.layer.cornerRadius = 25
        userProfileImageView.layer.cornerRadius = 15
        transactionTableView.backgroundColor = .white
        
        topupButton
            .imageView?
            .tintColor=UIColor.blue
        
        transferButton
            .imageView?
            .tintColor=UIColor.blue
    }
}

//MARK: - TableViewDataSource
extension HomeViewController:UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  transactionDummy?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = transactionTableView.dequeueReusableCell(withIdentifier: "TransactionCell", for: indexPath) as? TransactionHistoryTableViewCell{
            
            guard let data = transactionDummy?[indexPath.row] else { return UITableViewCell() }
            
            let name = data.name
            let picture = data.profilePicture
            let type = data.type
            let amount = data.amount
            
            cell.SetupData(name: name, picture: picture, type: type, nominal: amount)
            return cell
        }
        
        
        
        return UITableViewCell()
    }
    
    
}

//MARK: - TableViewDelegate
extension HomeViewController: UITableViewDelegate{
    
}
