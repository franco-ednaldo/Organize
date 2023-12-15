//
//  OnboardingRoutineViewController.swift
//  Organize
//
//  Created by Ednaldo Franco on 29/11/23.
//

import UIKit

class OnboardingRoutineViewController: UIViewController {
    var tappedNext: (() -> Void)?
    var tappedSkip: (() -> Void)?
    
    private var onboardingRoutineScreen: OnboardingRoutineScreen?
    
    override func loadView() {
        onboardingRoutineScreen = OnboardingRoutineScreen()
        onboardingRoutineScreen?.delegate(delegate: self)
        view = onboardingRoutineScreen
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension OnboardingRoutineViewController: OnboardingRoutineScreenDelegate {
    func next() {
        self.tappedNext?()
    }
    
    func skip() {
        self.tappedSkip?()
    }
    
}
