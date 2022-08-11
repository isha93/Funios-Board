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
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()
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
        return 95
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = transactionTableView.dequeueReusableCell(withIdentifier: "TransactionCell", for: indexPath) as? TransactionHistoryTableViewCell{
            return cell
        }
        
        return UITableViewCell()
    }
    
    
}

//MARK: - TableViewDelegate
extension HomeViewController: UITableViewDelegate{
    
}
