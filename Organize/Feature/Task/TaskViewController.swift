//
//  TaskViewController.swift
//  Organize
//
//  Created by Ednaldo Franco on 14/12/23.
//

import UIKit

class TaskViewController: UIViewController {

    lazy var taskScreen: TaskScreen = {
        let view = TaskScreen()
        return view
    }()
    
    override func loadView() {
        view = taskScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

}
