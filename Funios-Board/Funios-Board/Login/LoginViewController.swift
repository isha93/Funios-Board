//
//  LoginViewController.swift
//  Funios-Board
//
//  Created by Surya on 29/07/22.
//

import UIKit

class LoginViewController: UIViewController {
  
  @IBOutlet var cardView: UIView!
  
  override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
}

// MARK: - Set up cardView
extension LoginViewController {
    func setupLayout(){
      cardView.layer.cornerRadius = 35
    }
}


