//
//  OnboardingCoordinator.swift
//  Organize
//
//  Created by Ednaldo Franco on 14/12/23.
//

import UIKit

class OnboardingManagerCoordinator: Coordinator {

    var navigationController: UINavigationController
    
    func start() {
        let viewController = OnboardingManagerViewController()
        viewController.tappedNext = {
            let coordinator = OnboardingRoutineCoordinator(navigationController: self.navigationController)
            coordinator.start()
        }
        
        viewController.tappedSkip = {
            let coordinator = WelcomeCoordinator(navigationController: self.navigationController)
            coordinator.start()
        }
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
}
