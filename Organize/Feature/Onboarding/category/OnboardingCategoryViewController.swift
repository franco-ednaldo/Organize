//
//  CategoryViewController.swift
//  Organize
//
//  Created by Ednaldo Franco on 29/11/23.
//

import UIKit

class OnboardingCategoryViewController: UIViewController {
   
    var tappedNext: (() -> Void)?
    
    private var onboardingCategoryScreen: OnboardingCategoryScreen?
    
    override func loadView() {
        onboardingCategoryScreen = OnboardingCategoryScreen()
        onboardingCategoryScreen?.delegate(delegate: self)
        view = onboardingCategoryScreen
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension OnboardingCategoryViewController: OnboardingCategoryScreenDelegate {
    func skip() {
        self.tappedNext?()
    }
    
    func next() {
        self.tappedNext?()
    }
}
