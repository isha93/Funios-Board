//
//  ViewController.swift
//  Funios-Board
//
//  Created by isa nur fajar on 22/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ViewForLogin: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        editViewForLogin()
    }
    
    func editViewForLogin() {
        ViewForLogin.layer.cornerRadius = 40
    }
    
    func setEmailIcon(){
        emailTextField.leftViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let image = UIImage(systemName: "envelope")!
        image.withTintColor(UIColor.red)
        imageView.image = image
        emailTextField.leftView = imageView
    }
}
