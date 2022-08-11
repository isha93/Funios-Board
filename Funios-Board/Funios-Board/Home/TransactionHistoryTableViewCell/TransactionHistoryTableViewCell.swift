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
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var transactionTypeLabel: UILabel!
    @IBOutlet weak var transactionNominalLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupLayout()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

//MARK: - Cell Spacing
extension TransactionHistoryTableViewCell{
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
    }
}

//MARK: - Setup Layout
extension TransactionHistoryTableViewCell{
    func setupLayout(){
        cardView.layer.cornerRadius = 25
        userProfileImageView.layer.cornerRadius = 10
    }
}

//MARK: - Setup Data
extension TransactionHistoryTableViewCell{
    func SetupData(name: String, picture: String, type: String, nominal: String){
        userNameLabel.text = name
        userProfileImageView.image = UIImage(named: picture)
        transactionTypeLabel.text = type
        transactionNominalLabel.text = nominal
    }
}
