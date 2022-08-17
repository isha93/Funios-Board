//
//  Transaction.swift
//  Funios-Board
//
//  Created by Mohammad Azri on 17/08/22.
//

import Foundation
import UIKit

struct Transaction {
    let id: Int
    let image: UIImage
    let name: String
    let category: String
    let value: Int
    let isIncome: Bool
}

let dummyTransaction = [
    Transaction(id: 1, image: UIImage(named: "samuel")!, name: "Samuel Suhi", category: "Transfer", value: 50000, isIncome: true),
    Transaction(id: 2, image: UIImage(named: "spotify")!, name: "Spotify", category: "Subscription", value: 49000, isIncome: false),
    Transaction(id: 3, image: UIImage(named: "netflix")!, name: "Netflix", category: "Subscription", value: 149000, isIncome: false),
    Transaction(id: 4, image: UIImage(named: "bobi")!, name: "Bobi Sammy", category: "Transfer", value: 1150000, isIncome: true),
]
