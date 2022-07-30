//
//  LoginViewController.swift
//  Funios-Board
//
//  Created by Caroline Chan on 30/07/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var CardView: UIView!
    @IBOutlet weak var LoginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        editCardView()
        editLoginButton()
    }
    
    func editCardView(){
        CardView.layer.cornerRadius = 40
    }
    
    func editLoginButton(){
        LoginButton.layer.cornerRadius = 30
    }
}
