//
//  HomeTableViewCell.swift
//  Funios-Board
//
//  Created by Azri Muhammad on 14/08/22.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var transactionImage: UIImageView!
    @IBOutlet weak var transactionTitleLabel: UILabel!
    @IBOutlet weak var transactionCategoryLabel: UILabel!
    @IBOutlet weak var transactionValueLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func layoutSubviews() {
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 0))
        
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
