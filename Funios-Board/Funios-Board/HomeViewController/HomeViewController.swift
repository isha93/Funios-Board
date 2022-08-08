//
//  HomeViewController.swift
//  Funios-Board
//
//  Created by Caroline Chan on 08/08/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var ProfileImageView: UIImageView!
    @IBOutlet weak var CardView: UIView!
    @IBOutlet weak var NotificationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editCardViewContent()
    }
    
    func editCardViewContent() {
        CardView.layer.cornerRadius = 20
        ProfileImageView.layer.cornerRadius = 10
    }
}
