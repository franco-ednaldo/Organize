//
//  OnboardingCategoryCoordinator.swift
//  Organize
//
//  Created by Ednaldo Franco on 14/12/23.
//

import UIKit

class OnboardingCategoryCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    func start() {
        let viewController = OnboardingCategoryViewController()
        viewController.tappedNext = {
            
        }
        
        viewController.tappedNext = {
            let coordinator = WelcomeCoordinator(navigationController: self.navigationController)
            coordinator.start()
        }
        
        navigationController.pushViewController(viewController, animated: true)
    }
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    

}
