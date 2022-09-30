//
//  HomeTableViewCell.swift
//  Funios-Board
//
//  Created by Azri Muhammad on 14/08/22.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet private weak var transactionImage: UIImageView!
    @IBOutlet private weak var transactionTitleLabel: UILabel!
    @IBOutlet private weak var transactionCategoryLabel: UILabel!
    @IBOutlet private weak var transactionValueLabel: UILabel!
    @IBOutlet private weak var containerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.containerView.layer.cornerRadius = 16
        self.containerView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func bind(_ transaction: Transaction) {
        transactionImage.image = transaction.image
        transactionTitleLabel.text = transaction.name
        transactionCategoryLabel.text = transaction.category
        
        if transaction.isIncome {
            transactionValueLabel.textColor = UIColor(named: "green-income")
            transactionValueLabel.text = "+Rp\(transaction.value)"
        } else {
            transactionValueLabel.textColor = UIColor(named: "red-outcome")
            transactionValueLabel.text = "-Rp\(transaction.value)"
        }
    }
}
