//
//  RegisterViewController.swift
//  Organize
//
//  Created by Ednaldo Franco on 03/12/23.
//

import UIKit

class RegisterViewController: UIViewController {
    private var registerLogin:RegisterScreen?
    
    override func loadView() {
        registerLogin = RegisterScreen()
        view = registerLogin
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
