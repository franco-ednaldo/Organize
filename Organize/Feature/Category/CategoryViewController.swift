//
//  CategoryViewController.swift
//  Organize
//
//  Created by Ednaldo Franco on 14/12/23.
//

import UIKit

class CategoryViewController: UIViewController {

    lazy var categoryScreen: CategoryScreen = {
        let view = CategoryScreen()
        return view
    }()
    
    override func loadView() {
        view = categoryScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
