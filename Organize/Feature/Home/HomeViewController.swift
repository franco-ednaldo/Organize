//
//  TaskViewController.swift
//  Organize
//
//  Created by Ednaldo Franco on 03/12/23.
//

import UIKit

class HomeViewController: UIViewController {

    private var taskScreen: HomeScreen?
    
    override func loadView() {
        self.taskScreen = HomeScreen()
        view = taskScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
