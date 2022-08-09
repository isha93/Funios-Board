//
//  HomeViewController.swift
//  Funios-Board
//
//  Created by Caroline Chan on 08/08/22.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource {
    
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
        
        TransactionTableView.register(
            UINib(nibName: "TransactionTableViewCell", bundle: nil),
            forCellReuseIdentifier: "TransactionCell"
        )
    }
    
    func editCardViewContent() {
        CardView.layer.cornerRadius = 20
        ProfileImageView.layer.cornerRadius = 20
    }
    
    func buttonsCornerRadius() {
        TransferButton.layer.cornerRadius = 15
        TopUpButton.layer.cornerRadius = 15
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyTransactionData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(
            withIdentifier: "TransactionCell",
            for: indexPath
        ) as? TransactionTableViewCell {
            
            let transaction = dummyTransactionData[indexPath.row]
            cell.TransactionName.text = transaction.title
            cell.TransactionImage.image = transaction.image
            cell.TransactionDescription.text = transaction.description
            //            cell.TransactionAmount.text = transaction.amount
            return cell
        } else {
            return UITableViewCell()
        }
    }
}
