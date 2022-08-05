//
//  LoginViewController.swift
//  Funios-Board
//
//  Created by Danang Wijaya on 29/07/22.
//

import UIKit

class LoginViewController: UIViewController {
    var hidePassword = true
    @IBOutlet var tfEmail : UITextField!
    @IBOutlet var tfPassword: UITextField!
    @IBOutlet var cardView: UIView!
    @IBOutlet var btnLogin: UIButton!
    @IBOutlet var btnTooglePassword: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
            setUpView()
        // Do any additional setup after loading the view.
    }
    @IBAction func passwordToogleState(_ sender: Any){
        hidePassword = !hidePassword
        var image : UIImage
        switch(hidePassword){
        case false:
            image = UIImage(systemName: "eye")!
            tfPassword.isSecureTextEntry = false
            break;
        default:
            image = UIImage(systemName: "eye.slash")!
            tfPassword.isSecureTextEntry = true
        }
        btnTooglePassword.setImage(image, for: .normal)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension LoginViewController{
    func setUpView(){
        cardView.layer.cornerRadius = 35
        btnLogin.layer.cornerRadius = 30
    }
   
}
