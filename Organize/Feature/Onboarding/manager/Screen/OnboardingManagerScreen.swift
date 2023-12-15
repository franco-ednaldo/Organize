//
//  OnboardingManagerScreen.swift
//  Organize
//
//  Created by Ednaldo Franco on 29/11/23.
//

import UIKit

protocol OnboardingManagerScreenDelegate: AnyObject {
    func next()
    
    func skip()
}

class OnboardingManagerScreen: UIView {
    
    private weak var delegate:OnboardingManagerScreenDelegate?
    
    func delegate(delegate: OnboardingManagerScreenDelegate) {
        self.delegate = delegate
    }
    
    lazy var managerImageView:UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "onboarding_manager")
        return img
    }()
    
    lazy var navFirstImageView:UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "onboarding_nav_first")
        return img
    }()
    
    lazy var titleLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Organize suas atividades"
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    lazy var subtitleLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Você pode organizar facilmente toda sua rotina com Organize gratuitamente"
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
    
    lazy var skipButton:UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("PULAR", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        btn.setTitleColor(.white, for: .normal)
        btn.addTarget(self, action: #selector(skipLoginButton), for: .touchUpInside)
        return btn
    }()
    
    @objc func nextStepButton() {
        self.delegate?.next()
    }
    
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
        addSubview(managerImageView)
        addSubview(navFirstImageView)
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        addSubview(nextButton)
        addSubview(skipButton)
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            managerImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50),
            managerImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            managerImageView.widthAnchor.constraint(equalToConstant: 213),
            managerImageView.heightAnchor.constraint(equalToConstant: 277.78),
            
            navFirstImageView.topAnchor.constraint(equalTo: managerImageView.bottomAnchor, constant: 60),
            navFirstImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            navFirstImageView.widthAnchor.constraint(equalToConstant: 94.83),
            navFirstImageView.heightAnchor.constraint(equalToConstant: 4),
            
            titleLabel.topAnchor.constraint(equalTo: navFirstImageView.bottomAnchor, constant: 40),
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
