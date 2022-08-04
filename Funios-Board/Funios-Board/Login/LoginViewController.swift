//
//  LoginViewController.swift
//  Funios-Board
//
//  Created by Ade Dwi Prayitno on 28/07/22.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var cardView: UIView!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
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
    }
}

//MARK: - IBaction Event
extension LoginViewController{
    @IBAction func signUpButton(_ sender: Any) {
        print("ini SignUp")
    }
    @IBAction func loginButton(_ sender: Any) {
        print("do login")
    }
    @IBAction func forgotPasswordButton(_ sender: Any) {
        print("ini lupa password")
    }
}
