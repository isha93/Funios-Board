//
//  LoginViewController.swift
//  Funios-Board
//
//  Created by Anonym on 04/08/22.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    var showBtnPassword: Bool = false

    @IBOutlet weak var passwordDivider: UIView!
    @IBOutlet weak var emailDivider: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var passwordHideButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.delegate = self
        passwordTextField.delegate = self
        settingCardView()
    }
    @IBAction func loginAction(_ sender: Any) {
        if emailTextField.text == "jamaluddinalfadli97@gmail.com" && passwordTextField.text == "Alfadli07" {
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyBoard.instantiateViewController(withIdentifier: "ListTransactionViewController")
            self.present(vc, animated: false)
            
        }else {
            passwordDivider.backgroundColor = .red
            emailDivider.backgroundColor = .red
            
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
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
