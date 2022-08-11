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
        contentView.layer.cornerRadius = 25
        contentView.clipsToBounds = true
        contentView.layer.masksToBounds = false
        contentView.layer.shadowRadius = 5
        contentView.layer.shadowOpacity = 0.1
        contentView.layer.shadowOffset = CGSize(width: 0, height: 2)
        contentView.layer.shadowColor = UIColor.black.cgColor
        
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
