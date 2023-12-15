//
//  LoginViewController.swift
//  Organize
//
//  Created by Ednaldo Franco on 28/11/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    var tappedLoginSuccess: (() -> Void)?
    
    private var loginScreen: LoginScreen?
    
    override func loadView() {
        loginScreen = LoginScreen()
        loginScreen?.delegate(delegate: self)
        view = loginScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension LoginViewController: LoginScreenDelegate {
    func login() {
        // IF loggin success
        self.tappedLoginSuccess?()
//        let VC = TabViewController()
//        VC.modalPresentationStyle = .fullScreen
//        present(VC, animated: true)
    }
    
    func back() {
        self.dismiss(animated: true)
    }

}

