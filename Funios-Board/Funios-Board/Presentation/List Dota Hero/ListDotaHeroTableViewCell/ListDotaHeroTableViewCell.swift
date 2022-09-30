//
//  ListDotaHeroTableViewCell.swift
//  Funios-Board
//
//  Created by Ade Dwi Prayitno on 21/09/22.
//

import UIKit

class ListDotaHeroTableViewCell: UITableViewCell {
    @IBOutlet weak var heroName: UILabel!
    @IBOutlet weak var heroPrimaryAttr: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupData(heroName: String, heroPrimaryAttr: String){
        self.heroName.text = "Nama: " + heroName
        self.heroPrimaryAttr.text = "Primary Attr: " + heroPrimaryAttr.capitalized
    }
    
}
