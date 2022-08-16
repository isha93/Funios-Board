//
//  HomeViewController.swift
//  Funios-Board
//
//  Created by Caroline Chan on 08/08/22.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //MARK: Card View Section
    @IBOutlet weak var ProfileImageView: UIImageView!
    @IBOutlet weak var CardView: UIView!
    @IBOutlet weak var NotificationButton: UIButton!
    
    //MARK: Buttons View Section
    @IBOutlet weak var TransferButton: UIButton!
    @IBOutlet weak var TopUpButton: UIButton!
    
    //MARK: Table View Section
    @IBOutlet weak var TransactionTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editCardViewContent()
        buttonsCornerRadius()
        
        TransactionTableView.dataSource = self
        TransactionTableView.delegate = self
        TransactionTableView.separatorColor = UIColor.clear
        TransactionTableView.register(
            UINib(nibName: "TransactionTableViewCell", bundle: nil),
            forCellReuseIdentifier: "TransactionCell"
        )
    }
    
    @IBAction func doLogout(_ sender: UIButton) {
        
    }
    
    func editCardViewContent() {
        CardView.layer.cornerRadius = 20
        ProfileImageView.layer.cornerRadius = 20
    }
    
    func buttonsCornerRadius() {
        TransferButton.layer.cornerRadius = 15
        TopUpButton.layer.cornerRadius = 15
    }
    
    //MARK: Set the amount of section in table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return dummyTransactionData.count
    }
    
    //MARK: Set the amount of row in a section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    //MARK: Set the cell view iteration
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(
            withIdentifier: "TransactionCell",
            for: indexPath
        ) as? TransactionTableViewCell {
            
            let transaction = dummyTransactionData[indexPath.section]
            cell.TransactionName.text = transaction.title
            cell.TransactionImage.image = transaction.image
            cell.TransactionDescription.text = transaction.description
            cell.TransactionAmount.text = transaction.amount
            
            if transaction.amount.contains("+") {
                cell.TransactionAmount.textColor = UIColor.systemGreen
            } else {
                cell.TransactionAmount.textColor = UIColor.systemRed
            }
            
            cell.layer.shadowColor = UIColor.systemGray.cgColor
            cell.layer.shadowOpacity = 0.5
            
            return cell
        } else {
            return UITableViewCell()
        }
    }
}
