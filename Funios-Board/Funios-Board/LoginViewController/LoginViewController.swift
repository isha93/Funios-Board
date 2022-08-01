//
//  LoginViewController.swift
//  Funios-Board
//
//  Created by Caroline Chan on 30/07/22.
//

import UIKit

class LoginViewController: UIViewController {

    var showPassword: Bool = false
    @IBOutlet weak var PasswordVisibilityButton: UIButton!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var CardView: UIView!
    @IBOutlet weak var LoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editCardView()
        editLoginButton()
    }
    
    @IBAction func changePasswordVisibility(_ sender: Any) {
        showPassword = !showPassword
        
        if(showPassword == true){
            let image = UIImage(systemName: "eye")!
            PasswordTextField.isSecureTextEntry = false
            PasswordVisibilityButton.setImage(image, for: .normal)
        }else{
            let image = UIImage(systemName: "eye.slash")!
            PasswordTextField.isSecureTextEntry = true
            PasswordVisibilityButton.setImage(image, for: .normal)
        }
    }
    
    func editCardView(){
        CardView.layer.cornerRadius = 40
    }
    
    func editLoginButton(){
        LoginButton.layer.cornerRadius = 30
    }
}
