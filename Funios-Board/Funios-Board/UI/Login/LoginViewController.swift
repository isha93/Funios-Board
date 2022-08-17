//
//  LoginViewController.swift
//  Funios-Board
//
//  Created by Azri Muhammad on 10/08/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var forgotPasswordLabel: UILabel!
    @IBOutlet weak var showHidePasswordImage: UIImageView!
    @IBOutlet weak var signUpLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginContentView: UIView!
    
    private let viewModel = LoginViewModel()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureLoginContentView()
        configureShowHidePasswordImage()
        configureSignUpLabel()
    }
    
    private func configureLoginContentView() {
        loginContentView.layer.cornerRadius = 16
        loginContentView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        loginContentView.clipsToBounds = true
        
        userPasswordTextField.isSecureTextEntry = true
    }
    
    private func configureShowHidePasswordImage() {
        showHidePasswordImage.isUserInteractionEnabled = true
        let onShowHidePasswordImageTapped = UITapGestureRecognizer(target: self, action: #selector(self.onShowHidePasswordImageTapped(_:)))
        
        showHidePasswordImage.addGestureRecognizer(onShowHidePasswordImageTapped)
    }
    
    private func configureSignUpLabel() {
        let mainString = "Don't have an account? Let's Sign Up"
        let stringToColor = "Sign Up"
        let range = (mainString as NSString).range(of: stringToColor)

        let mutableAttributedString = NSMutableAttributedString.init(string: mainString)
        mutableAttributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(named: "zwallet-primary")!, range: range)
        
        signUpLabel.attributedText = mutableAttributedString
    }
    
    @objc private func onShowHidePasswordImageTapped(_ sender: UITapGestureRecognizer? = nil) {
        if viewModel.showPassword() {
            userPasswordTextField.isSecureTextEntry = false
            showHidePasswordImage.image = UIImage(systemName: "eye")
        } else {
            userPasswordTextField.isSecureTextEntry = true
            showHidePasswordImage.image = UIImage(systemName: "eye.slash")
        }
    }

    @IBAction func onLoginButtonTapped(_ sender: UIButton) {
        if viewModel.userValidation(
            email: userEmailTextField.text,
            password: userPasswordTextField.text
        ) {
            let homeViewController = HomeViewController()
            navigationController?.pushViewController(homeViewController, animated: true)
        } else {
            print("Username salah")
        }
    }
}
