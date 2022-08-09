//
//  TransactionModel.swift
//  Funios-Board
//
//  Created by Caroline Chan on 08/08/22.
//

import Foundation
import UIKit

struct TransactionModel {
    let image : UIImage
    let title : String
    let description : String
    let amount : String
}

//MARK: dummy transaction data to show in table view
let dummyTransactionData = [
    TransactionModel(image: UIImage(named: "Profile")!, title: "Samuel Sushi", description: "Transfer", amount: "+Rp50.000")
    ,
    TransactionModel(image: UIImage(named: "Spotify")!, title: "Spotify", description: "Subscription", amount: "-Rp49.000")
    ,
    TransactionModel(image: UIImage(named: "Youtube")!, title: "Youtube", description: "Subscription", amount: "-Rp149.000")
    ,
    TransactionModel(image: UIImage(named: "Profile")!, title: "Budi Martabak", description: "Transfer", amount: "+Rp100.000")
    ,
    TransactionModel(image: UIImage(named: "Profile")!, title: "Ani Ramen", description: "Transfer", amount: "+Rp10.000")
    ,
    TransactionModel(image: UIImage(named: "Youtube")!, title: "Youtube", description: "Subscription", amount: "-Rp149.000")
    ,
    TransactionModel(image: UIImage(named: "Youtube")!, title: "Youtube", description: "Subscription", amount: "-Rp149.000")
    ,
    TransactionModel(image: UIImage(named: "Youtube")!, title: "Youtube", description: "Subscription", amount: "-Rp149.000")
    ,
    TransactionModel(image: UIImage(named: "Profile")!, title: "Bobby Indomie", description: "Transfer", amount: "+Rp1.000.000")
    ,
]
