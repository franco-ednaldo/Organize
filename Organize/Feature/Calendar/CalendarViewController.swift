//
//  CalendarViewController.swift
//  Organize
//
//  Created by Ednaldo Franco on 14/12/23.
//

import UIKit

class CalendarViewController: UIViewController {
    lazy var calendarView: CalendarScreen = {
        let view = CalendarScreen()
        return view
    }()
    
    override func loadView() {
        view = calendarView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}
