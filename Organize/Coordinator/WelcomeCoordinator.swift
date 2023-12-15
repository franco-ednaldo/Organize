//
//  WelcomeCoordinator.swift
//  Organize
//
//  Created by Ednaldo Franco on 14/12/23.
//

import UIKit

class WelcomeCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    func start() {
        let viewController = WelcomeViewController()
        
        viewController.tappedOpenLogin = {
            let coordinator = LoginCoordinator(navigationController: self.navigationController)
            coordinator.start()
        }
        
        viewController.tappedOpenRegister = {
            let coordinator = RegisterCoordinator(navigationController: self.navigationController)
            coordinator.start()
            
        }
        
        navigationController.pushViewController(viewController, animated: true)
    }
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    

}
