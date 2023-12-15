//
//  WelcomeScreen.swift
//  Organize
//
//  Created by Ednaldo Franco on 29/11/23.
//

import UIKit

protocol WelcomeScreenDelegate: AnyObject {
    func logar()
    func register()
}

class WelcomeScreen: UIView {
    
    private weak var delegate: WelcomeScreenDelegate?
    
    func delegate(delegate: WelcomeScreenDelegate) {
        self.delegate = delegate
    }
    
    lazy var titleLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Bem vindo ao Organize"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        return label
    }()
    
    lazy var subtitleLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Faça o login em sua conta ou crie uma nova conta para continuar"
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    lazy var loginButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 136/255, green: 117/255, blue: 255/255, alpha: 1.0)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.tintColor = .white
        button.setTitle("LOGIN", for: .normal)
        button.addTarget(self, action: #selector(navLoginButton), for: .touchUpInside)
        return button
    }()
    
    @objc func navLoginButton() {
        self.delegate?.logar()
    }
    
    lazy var registerButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.tintColor = .white
        button.setTitle("REGISTRE-SE", for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red: 136/255, green: 117/255, blue: 255/255, alpha: 1.0).cgColor
        button.addTarget(self, action: #selector(navRegisterButton), for: .touchUpInside)
        return button
    }()
    
    @objc func navRegisterButton() {
        self.delegate?.register()
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
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        addSubview(loginButton)
        addSubview(registerButton)
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 40),
            subtitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            subtitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            
            registerButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -80),
            registerButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            registerButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
           // registerButton.widthAnchor.constraint(equalToConstant: 327),
            registerButton.heightAnchor.constraint(equalToConstant: 48),
            
            loginButton.bottomAnchor.constraint(equalTo: registerButton.topAnchor, constant: -20),
            loginButton.leadingAnchor.constraint(equalTo: registerButton.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: registerButton.trailingAnchor),
            //loginButton.widthAnchor.constraint(equalToConstant: 327),
            loginButton.heightAnchor.constraint(equalToConstant: 48),
            
        ])
    }
}
