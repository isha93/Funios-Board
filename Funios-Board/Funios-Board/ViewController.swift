//
//  ViewController.swift
//  Funios-Board
//
//  Created by isa nur fajar on 22/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ViewForLogin: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        editViewForLogin()
    }

    func editViewForLogin() {
        ViewForLogin.layer.cornerRadius = 40
    }

}

