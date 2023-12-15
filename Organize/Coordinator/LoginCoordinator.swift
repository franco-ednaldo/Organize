//
//  LoginCoordinator.swift
//  Organize
//
//  Created by Ednaldo Franco on 14/12/23.
//

import UIKit

class LoginCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    func start() {
        let viewController = LoginViewController()
        viewController.tappedLoginSuccess = {
            let coordinator = TabBarManagerCoordinator(navigationController: self.navigationController)
            coordinator.start()
        }
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
}
