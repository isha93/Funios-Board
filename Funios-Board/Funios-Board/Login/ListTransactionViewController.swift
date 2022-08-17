//
//  ListTransactionViewController.swift
//  Funios-Board
//
//  Created by Anonym on 11/08/22.
//

import Foundation
import UIKit

class ListTransactionViewController : UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: String(describing: TransactionCellTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: TransactionCellTableViewCell.self))
        tableView.dataSource = self
        
    }
}

extension ListTransactionViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: TransactionCellTableViewCell.self), for: indexPath) as! TransactionCellTableViewCell
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
}
