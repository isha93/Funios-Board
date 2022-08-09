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
    let amount : Int
}

//MARK: dummy transaction data to show in table view
let dummyTransactionData = [
    TransactionModel(image: UIImage(named: "Profile")!, title: "Samuel Sushi", description: "Transfer", amount: 50000)
    ,
    TransactionModel(image: UIImage(named: "Spotify")!, title: "Spotify", description: "Subscription", amount: -49000)
    ,
    TransactionModel(image: UIImage(named: "Youtube")!, title: "Youtube", description: "Subscription", amount: -149000)
    ,
    TransactionModel(image: UIImage(named: "Profile")!, title: "Budi Martabak", description: "Transfer", amount: 100000)
    ,
    TransactionModel(image: UIImage(named: "Profile")!, title: "Ani Ramen", description: "Transfer", amount: 10000)
    ,
    TransactionModel(image: UIImage(named: "Youtube")!, title: "Youtube", description: "Subscription", amount: -149000)
    ,
    TransactionModel(image: UIImage(named: "Youtube")!, title: "Youtube", description: "Subscription", amount: -149000)
    ,
    TransactionModel(image: UIImage(named: "Youtube")!, title: "Youtube", description: "Subscription", amount: -149000)
]
