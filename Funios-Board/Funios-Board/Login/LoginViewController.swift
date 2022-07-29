//
//  LoginViewController.swift
//  Funios-Board
//
//  Created by Danang Wijaya on 29/07/22.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var tfEmail : UITextField!
    @IBOutlet var tfPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
            setUpTextField()
        // Do any additional setup after loading the view.
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
    func setUpTextField(){
        setUpImageTextField(icon: UIImage(systemName: "envelope")!, tf: tfEmail)
        setUpImageTextField(icon: UIImage(systemName: "lock")!, tf: tfPassword)
    }
    func setUpImageTextField(icon: UIImage,tf:UITextField){
        let ic = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: icon.size.width, height: icon.size.height))
        ic.image = icon
        tf.leftView = ic
        tf.leftView?.tintColor = UIColor.systemGray3
        tf.leftViewMode = .always
    }
}
