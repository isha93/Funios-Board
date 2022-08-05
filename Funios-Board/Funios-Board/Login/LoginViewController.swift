//
//  LoginViewController.swift
//  Funios-Board
//
//  Created by Anonym on 04/08/22.
//

import UIKit

class LoginViewController: UIViewController {
    var showBtnPassword: Bool = false

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var passwordHideButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        settingCardView()
    }

    @IBAction func changePasswordHidden(_ sender: Any) {
        showBtnPassword = !showBtnPassword
        
        if(showBtnPassword == true){
            let imageView = UIImage(systemName: "eye")!
            passwordTextField.isSecureTextEntry = false
            passwordHideButton.setImage(imageView, for: .normal)
        } else{
            let imageView = UIImage(systemName: "eye.slash")!
            passwordTextField.isSecureTextEntry = true
            passwordHideButton.setImage(imageView, for: .normal)
        }
        
    }
    
    func settingCardView(){
        cardView.layer.cornerRadius = 33
    }
}
