//
//  OnboardingRoutineScreen.swift
//  Organize
//
//  Created by Ednaldo Franco on 29/11/23.
//

import UIKit

protocol OnboardingRoutineScreenDelegate: AnyObject {
    func next()
    func skip()
}

class OnboardingRoutineScreen: UIView {
    
    private weak var delegate: OnboardingRoutineScreenDelegate?
    
    func delegate(delegate: OnboardingRoutineScreenDelegate) {
        self.delegate = delegate
    }
    
    lazy var routineImage:UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "onboarding_routine")
        return img
    }()
    
    lazy var navSecondImage:UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "onboarding_nav_second")
        return img
    }()
    
    
    lazy var titleLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Crie rotina diária"
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    lazy var subtitleLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Você pode criar sua rotina personalizada para ser mais produtivo"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    lazy var nextButton:UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Próximo", for: .normal)
        btn.backgroundColor = UIColor(red: 136/255, green: 117/255, blue: 255/255, alpha: 1.0)
        btn.clipsToBounds = true
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(nextStepButton), for: .touchUpInside)
        return btn
    }()
    
    @objc func nextStepButton() {
        self.delegate?.next()
    }
    
    lazy var skipButton:UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("PULAR", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        btn.setTitleColor(.white, for: .normal)
        btn.addTarget(self, action: #selector(skipLoginButton), for: .touchUpInside)
        return btn
    }()
    
    @objc func skipLoginButton() {
        self.delegate?.skip()
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
        self.addElements()
        self.addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(routineImage)
        addSubview(navSecondImage)
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        addSubview(nextButton)
        addSubview(skipButton)
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            routineImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50),
            routineImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            routineImage.widthAnchor.constraint(equalToConstant: 271),
            routineImage.heightAnchor.constraint(equalToConstant: 296),
            
            navSecondImage.topAnchor.constraint(equalTo: routineImage.bottomAnchor, constant: 60),
            navSecondImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            navSecondImage.widthAnchor.constraint(equalToConstant: 94.83),
            navSecondImage.heightAnchor.constraint(equalToConstant: 4),
            
            titleLabel.topAnchor.constraint(equalTo: navSecondImage.bottomAnchor, constant: 40),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 40),
            subtitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            subtitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            
            nextButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -70),
            nextButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            nextButton.widthAnchor.constraint(equalToConstant: 92),
            nextButton.heightAnchor.constraint(equalToConstant: 50),
            
            skipButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            skipButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            skipButton.widthAnchor.constraint(equalToConstant: 92),
            skipButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}
