//
//  TransactionTableViewCell.swift
//  Funios-Board
//
//  Created by Caroline Chan on 09/08/22.
//

import UIKit

class TransactionTableViewCell: UITableViewCell {

    @IBOutlet weak var TransactionImage: UIImageView!
    @IBOutlet weak var TransactionName: UILabel!
    @IBOutlet weak var TransactionDescription: UILabel!
    @IBOutlet weak var TransactionAmount: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0))
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
