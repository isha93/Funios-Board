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
    
    private let viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureShowHidePasswordImage()
    }
    
    private func configureShowHidePasswordImage() {
        showHidePasswordImage.isUserInteractionEnabled = true
        let onShowHidePasswordImageTapped = UITapGestureRecognizer(target: self, action: #selector(self.onShowHidePasswordImageTapped(_:)))
        
        showHidePasswordImage.addGestureRecognizer(onShowHidePasswordImageTapped)
    }
    
    @objc private func onShowHidePasswordImageTapped(_ sender: UITapGestureRecognizer? = nil) {
        
    }

    @IBAction func onLoginButtonTapped(_ sender: UIButton) {
        print("Login button tapped!")
    }
}
