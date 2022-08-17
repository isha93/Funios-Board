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
            isShow = false
            return true
        } else {
            isShow = true
            return false
        }
    }
    
    func userValidation(email: String?, password: String?) -> Bool {
        guard let mail = email else {
            return false
        }
        
        guard let pass = password else {
            return false
        }
        
        if mail == "azri@mail.com" && pass == "12345" {
            return true
        } else {
            return false
        }
    }
}
