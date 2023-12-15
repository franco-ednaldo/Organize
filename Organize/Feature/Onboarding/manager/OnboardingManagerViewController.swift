//
//  OnboardingViewController.swift
//  Organize
//
//  Created by Ednaldo Franco on 29/11/23.
//

import UIKit

class OnboardingManagerViewController: UIViewController {
    var tappedNext: (() -> Void)?
    var tappedSkip: (() -> Void)?
    
    private var onboardingManagerScreen:OnboardingManagerScreen?
    
    
    override func loadView() {
        onboardingManagerScreen = OnboardingManagerScreen()
        onboardingManagerScreen?.delegate(delegate: self)
        view = onboardingManagerScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}

extension OnboardingManagerViewController: OnboardingManagerScreenDelegate {
    func next() {
        self.tappedNext?()
    }
    
    func skip() {
        self.tappedSkip?()
    }
}
