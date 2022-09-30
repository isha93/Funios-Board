//
//  DotaHeroesTableViewCell.swift
//  Funios-Board
//
//  Created by Mohammad Azri on 30/09/22.
//

import UIKit

class DotaHeroesTableViewCell: UITableViewCell {
    
//    @IBOutlet private weak var containerView: UIView!
    @IBOutlet private weak var heroNameLabel: UILabel!
    @IBOutlet private weak var heroAttributeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        self.containerView.layer.cornerRadius = 16
//        self.containerView.clipsToBounds = true
    }
    
    func bind(_ hero: DotaModel) {
        heroNameLabel.text = hero.name
        
        switch hero.attribute {
        case .agi:
            heroAttributeLabel.text = "Agility"
        case .int:
            heroAttributeLabel.text = "Intelligence"
        case .str:
            heroAttributeLabel.text = "Strength"
        }
    }
    
}
