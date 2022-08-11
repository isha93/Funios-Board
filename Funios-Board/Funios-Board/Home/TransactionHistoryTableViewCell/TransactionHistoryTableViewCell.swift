//
//  TransactionHistoryTableViewCell.swift
//  Funios-Board
//
//  Created by Ade Dwi Prayitno on 11/08/22.
//

import UIKit

class TransactionHistoryTableViewCell: UITableViewCell {
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var userProfileImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupLayout()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

//MARK: - Setup Layout
extension TransactionHistoryTableViewCell{
    func setupLayout(){
        cardView.layer.cornerRadius = 25
        userProfileImageView.layer.cornerRadius = 10
    }
}
