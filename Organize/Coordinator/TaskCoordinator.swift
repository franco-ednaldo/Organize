//
//  TaskCoordinator.swift
//  Organize
//
//  Created by Ednaldo Franco on 14/12/23.
//

import UIKit

class TaskCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    func start() {
        let viewController = TaskViewController()
        navigationController.pushViewController(viewController, animated: true)
    }
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    

}
