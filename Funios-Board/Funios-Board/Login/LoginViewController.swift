//
//  LoginViewController.swift
//  Funios-Board
//
//  Created by Anonym on 04/08/22.
//

import UIKit

class LoginViewController: UIViewController {
    var showBtnPassword: Bool = false

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var passwordHideButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        settingCardView()
    }

    @IBAction func changePasswordHidden(_ sender: Any) {
        showBtnPassword = !showBtnPassword
        
    }
    
    func settingCardView(){
        cardView.layer.cornerRadius = 33
    }
}
