//
//  LoginViewController.swift
//  Funios-Board
//
//  Created by Caroline Chan on 30/07/22.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    var showPassword: Bool = false
    
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var EmailIcon: UIImageView!
    @IBOutlet weak var EmailTextfieldSeparator: UIView!
    
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var PasswordIcon: UIImageView!
    @IBOutlet weak var PasswordTextfieldSeparator: UIView!
    @IBOutlet weak var PasswordVisibilityButton: UIButton!
    
    @IBOutlet weak var AlertLabel: UILabel!
    @IBOutlet weak var CardView: UIView!
    @IBOutlet weak var LoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editCardView()
        editLoginButton()
        
        //MARK: Set textfield delegate
        EmailTextField.delegate = self
        PasswordTextField.delegate = self
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
    
    @IBAction func doLogin(_ sender: UIButton) {
        if EmailTextField.text == "cc@gmail.com" && PasswordTextField.text == "123456" {
            let viewController = UINavigationController(rootViewController: HomeViewController())
            viewController.modalPresentationStyle = .fullScreen
            present(viewController, animated: true, completion: nil)
        } else {
            EmailIcon.tintColor = UIColor(named: "RedColor")!
            EmailTextfieldSeparator.backgroundColor = UIColor(named: "RedColor")!
            
            PasswordIcon.tintColor = UIColor(named: "RedColor")!
            PasswordTextfieldSeparator.backgroundColor = UIColor(named: "RedColor")!
            AlertLabel.textColor = UIColor(named: "RedColor")!
        }
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == EmailTextField {
            EmailIcon.tintColor = UIColor(named: "AppColor")!
            EmailTextfieldSeparator.backgroundColor = UIColor(named: "AppColor")!
        } else if textField == PasswordTextField {
            PasswordIcon.tintColor = UIColor(named: "AppColor")!
            PasswordTextfieldSeparator.backgroundColor = UIColor(named: "AppColor")!
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField){
        AlertLabel.textColor = UIColor.clear
        if textField == EmailTextField {
            EmailIcon.tintColor = .systemGray3
            EmailTextfieldSeparator.backgroundColor = .systemGray3
        } else if textField == PasswordTextField {
            PasswordIcon.tintColor = .systemGray3
            PasswordTextfieldSeparator.backgroundColor = .systemGray3
        }
    }
    
    func editCardView(){
        CardView.layer.cornerRadius = 40
    }
    
    func editLoginButton(){
        LoginButton.layer.cornerRadius = 30
    }
}
