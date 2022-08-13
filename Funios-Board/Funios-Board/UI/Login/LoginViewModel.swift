//
//  LoginViewModel.swift
//  Funios-Board
//
//  Created by Azri Muhammad on 12/08/22.
//

import Foundation

class LoginViewModel {
    private var isShow: Bool = false
    private var userPassword: String? = nil
    
    func showPassword() -> Bool {
        if isShow {
            return false
        } else {
            return false
        }
    }
    
    func setUserPassword(userPassowrd: String?) {
        guard let password = userPassowrd else {
            return
        }
        self.userPassword = password
    }
}
