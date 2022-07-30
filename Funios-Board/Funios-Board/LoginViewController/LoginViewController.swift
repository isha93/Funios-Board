//
//  LoginViewController.swift
//  Funios-Board
//
//  Created by Caroline Chan on 30/07/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var CardView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func editCardView(){
        CardView.layer.cornerRadius = 40
    }
}
