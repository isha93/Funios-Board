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
    @IBOutlet weak var TransferButton: UIButton!
    @IBOutlet weak var TopUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editCardViewContent()
        buttonsCornerRadius()
    }
    
    func editCardViewContent() {
        CardView.layer.cornerRadius = 20
        ProfileImageView.layer.cornerRadius = 20
    }
    
    func buttonsCornerRadius() {
        TransferButton.layer.cornerRadius = 15
        TopUpButton.layer.cornerRadius = 15
    }
}
