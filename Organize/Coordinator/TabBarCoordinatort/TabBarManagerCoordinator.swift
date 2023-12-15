//
//  TabBarManagerCoordinator.swift
//  Organize
//
//  Created by Ednaldo Franco on 14/12/23.
//

import UIKit

enum TabBarPage {
    case home
    case calendar
    case task
    case category
    case profile
    
    init?(index: Int) {
        switch(index) {
        case 0:
            self = .home
        case 1:
            self = .calendar
        case 2:
            self = .task
        case 3:
            self = .category
        case 4:
            self = .profile
        default:
            return nil
        }
    }
    
    func pageTitleValue() -> String {
        switch self {
        case .home:
            return "Home"
        case .calendar:
            return "Calendário"
        case .task:
            return "Atividade"
        case .category:
            return "Categoria"
        case .profile:
            return "Perfil"
        }
    }
    
    func pageIconValue() -> String {
        switch self {
        case .home:
            return "house"
        case .calendar:
            return "calendar"
        case .task:
            return "list.clipboard"
        case .category:
            return "signpost.right.and.left"
        case .profile:
            return "person"
        }
    }
    
    func pageOrderNumber() -> Int {
        switch self {
        case .home:
            return 0
        case .calendar:
            return 1
        case .task:
            return 2
        case .category:
            return 3
        case .profile:
            return 4
        }
    }
}


class TabBarManagerCoordinator: Coordinator {
    var navigationController: UINavigationController
    var tabBarController: UITabBarController
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.tabBarController = UITabBarController()
    }
    
    func start() {
        let pages: [TabBarPage] = [.home, .calendar, .task, .category, .profile]
            .sorted { $0.pageOrderNumber() < $1.pageOrderNumber() }
        
        let controllers: [UINavigationController] = pages.map({ getTabController(page: $0) })
        prepareTabBarController(with: controllers)
    }
    
    private func prepareTabBarController(with tabControllers: [UIViewController]) {
        self.tabBarController.setViewControllers(tabControllers, animated: true)
        self.tabBarController.selectedIndex = TabBarPage.home.pageOrderNumber()
        self.navigationController.viewControllers = [tabBarController]
    }
    
    private func getTabController(page: TabBarPage) -> UINavigationController {
        let navigation = UINavigationController()
        navigation.setNavigationBarHidden(false, animated: false)
        navigation.tabBarItem = UITabBarItem(title: page.pageTitleValue(),
                                             image: UIImage(systemName: page.pageIconValue()),
                                             tag: page.pageOrderNumber())
        
        let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithDefaultBackground()
        tabBarAppearance.backgroundColor = UIColor(red: 54/255, green: 54/255, blue: 54/255, alpha: 1.0)
        
        self.tabBarController.tabBar.standardAppearance = tabBarAppearance
        self.tabBarController.tabBar.scrollEdgeAppearance = tabBarAppearance
        self.tabBarController.tabBar.tintColor = .white
        
        switch(page) {
        case .home:
            let viewController = HomeViewController()
            navigation.pushViewController(viewController, animated: true)
        case .calendar:
            let viewController = CalendarViewController()
            navigation.pushViewController(viewController, animated: true)
        case .task:
            let viewController = TaskViewController()
            navigation.pushViewController(viewController, animated: true)
        case .category:
            let viewController = CategoryViewController()
            navigation.pushViewController(viewController, animated: true)
        case .profile:
            let viewController = ProfileViewController()
            navigation.pushViewController(viewController, animated: true)
        }
        
        return navigation
    }
    
}
