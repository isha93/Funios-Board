//
//  LoginViewController.swift
//  Funios-Board
//
//  Created by Ade Dwi Prayitno on 28/07/22.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var cardView: UIView!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupLayout()
    }
}

//MARK: - Setup Layout
extension LoginViewController{
    func setupLayout(){
        //CardView
        cardView.layer.cornerRadius = 35
        
        //EmailTextView
        emailTextField.placeholder = "Enter your e-mail"
        
        passwordTextField.placeholder = "Enter your password"

    }
}
