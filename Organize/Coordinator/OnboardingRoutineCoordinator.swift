//
//  OnboardingRoutineCoordinator.swift
//  Organize
//
//  Created by Ednaldo Franco on 14/12/23.
//

import UIKit

class OnboardingRoutineCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    func start() {
        let viewController = OnboardingRoutineViewController()
        
        viewController.tappedNext = {
            let coordinator = OnboardingCategoryCoordinator(navigationController: self.navigationController)
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
