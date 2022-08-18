//
//  LoginViewController.swift
//  Funios-Board
//
//  Created by Ade Dwi Prayitno on 28/07/22.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var emailIconImageView: UIImageView!
    @IBOutlet weak var passwordIconImageView: UIImageView!
    @IBOutlet weak var cardView: UIView!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet weak var hideShowPasswordButton: UIButton!
    @IBOutlet weak var emailBottomLineView: UIView!
    @IBOutlet weak var passwordBottomLineView: UIView!
    @IBOutlet weak var emailPasswordErrLabel: UILabel!
    
    private var showPassword: Bool = false
    private let validEmail: String = "adedwip1808@gmail.com"
    private let validPassword: String = "password123"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    
}

//MARK: - Setup Layout
extension LoginViewController{
    func setupLayout(){
        //CardView
        cardView.layer.cornerRadius = 35
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        //Email or password err label
        emailPasswordErrLabel.isHidden = true
    }
}

//MARK: - Validation
extension LoginViewController{
    func userValidation(){
        if let email = emailTextField.text{
            if email != validEmail{
                emailPasswordErrLabel.isHidden = false
                emailIconImageView.tintColor = .red
                emailBottomLineView.backgroundColor = .red
            }
        }
        if let password = passwordTextField.text{
            if password != validPassword{
                emailPasswordErrLabel.isHidden = false
                passwordIconImageView.tintColor = .red
                passwordBottomLineView.backgroundColor = .red
            }
        }
    }
}

//MARK: - IBaction Event
extension LoginViewController{
    @IBAction func signUpButton(_ sender: Any) {
        print("ini SignUp")
    }
    @IBAction func loginButton(_ sender: Any) {
        userValidation()
        emailTextField.endEditing(true)
        passwordTextField.endEditing(true)
        print("do login")
    }
    @IBAction func forgotPasswordButton(_ sender: Any) {
        print("ini lupa password")
    }
    @IBAction func hideShowPasswordButtonPressed(_ sender: Any){
        if showPassword {
            passwordTextField.isSecureTextEntry = true
            hideShowPasswordButton.setImage(UIImage( systemName: "eye"), for: .normal)
        }else{
            passwordTextField.isSecureTextEntry = false
            hideShowPasswordButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        }
        showPassword = !showPassword
    }
}

//MARK: - UITextFieldDelegate Logic
extension LoginViewController: UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField) {
        switch (textField){
        case emailTextField:
            emailIconImageView.tintColor = .systemBlue
            emailBottomLineView.backgroundColor = .systemBlue
            break
        case passwordTextField:
            passwordIconImageView.tintColor = .systemBlue
            passwordBottomLineView.backgroundColor = .systemBlue
            break
        default:
            break
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        switch (textField){
        case emailTextField:
            emailIconImageView.tintColor = .systemGray3
            emailBottomLineView.backgroundColor = .systemGray3
            userValidation()
            break
        case passwordTextField:
            passwordIconImageView.tintColor = .systemGray3
            passwordBottomLineView.backgroundColor = .systemGray3
            userValidation()
            break
        default:
            break
        }
    }
}
