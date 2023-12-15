//
//  WelcomeViewController.swift
//  Organize
//
//  Created by Ednaldo Franco on 29/11/23.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var tappedOpenLogin: (() -> Void)?
    var tappedOpenRegister: (() -> Void)?
    
    private var welcomeScreen: WelcomeScreen?
    
    
    override func loadView() {
        welcomeScreen = WelcomeScreen()
        welcomeScreen?.delegate(delegate: self)
        view = welcomeScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension WelcomeViewController:WelcomeScreenDelegate {
    func register() {
        self.tappedOpenRegister?()
    }
    
    func logar() {
        self.tappedOpenLogin?()
        
    }
    
}
