//
//  LoginScreen.swift
//  Organize
//
//  Created by Ednaldo Franco on 28/11/23.
//

import UIKit

protocol LoginScreenDelegate:AnyObject {
    func back()
    
    func login()
}

class LoginScreen: UIView {
    
    private weak var delegage: LoginScreenDelegate?
    
    func delegate(delegate: LoginScreenDelegate) {
        self.delegage = delegate
    }
    
    lazy var backButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "back"), for: .normal)
        button.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedBackButton() {
        self.delegage?.back()
    }
    
    lazy var titlelabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        label.text = "Login"
        return label
    }()
    
    lazy var emailLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "E-mail"
        return label
    }()
    
    lazy var emailUITextField: UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.clipsToBounds = true
        text.backgroundColor = UIColor(red: 29/255, green: 29/255, blue: 29/225, alpha: 1.0)
        text.textColor = .white
        text.layer.cornerRadius = 4
        text.layer.borderWidth = 1
        text.font = UIFont.systemFont(ofSize: 16)
        text.layer.borderColor = UIColor(red: 151/255, green: 151/255, blue: 151/225, alpha: 1.0).cgColor
        text.attributedPlaceholder = NSAttributedString(string: "Entre com seu email",
                                                        attributes: [NSAttributedString.Key.foregroundColor : UIColor.white.withAlphaComponent(0.40)])
        
        let leftSpaceView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: text.frame.size.height))
        text.leftView = leftSpaceView
        text.leftViewMode = .always
        return text
        
    }()
    
    lazy var passwordLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "Senha"
        return label
    }()
    
    lazy var passwordUITextField: UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.clipsToBounds = true
        text.backgroundColor = UIColor(red: 29/255, green: 29/255, blue: 29/225, alpha: 1.0)
        text.textColor = .white
        text.layer.cornerRadius = 4
        text.layer.borderWidth = 1
        text.font = UIFont.systemFont(ofSize: 16)
        text.layer.borderColor = UIColor(red: 151/255, green: 151/255, blue: 151/225, alpha: 1.0).cgColor
        text.attributedPlaceholder = NSAttributedString(string: "Entre com sua senha",
                                                        attributes: [NSAttributedString.Key.foregroundColor : UIColor.white.withAlphaComponent(0.40)])
        
        let leftSpaceView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: text.frame.size.height))
        text.leftView = leftSpaceView
        text.leftViewMode = .always
        text.isSecureTextEntry = true
        return text
        
    }()
    
    
    lazy var loginButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 136/255, green: 117/255, blue: 255/255, alpha: 1.0)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.tintColor = .white
        button.setTitle("LOGIN", for: .normal)
        button.addTarget(self, action: #selector(navHomeButton), for: .touchUpInside)
        return button
    }()
    
    @objc func navHomeButton() {
        self.delegage?.login()
    }
    
    lazy var separatorLeftImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "separator")
        return imageView
    }()
    
    lazy var separatorRightImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "separator")
        return imageView
    }()
    
    lazy var orlabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "ou"
        return label
    }()
    
    lazy var loginGoogleButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.tintColor = .white
        button.setTitle("Login com google", for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red: 136/255, green: 117/255, blue: 255/255, alpha: 1.0).cgColor
        button.setImage(UIImage(named: "logo_google"), for: .normal)
        
        //button.addTarget(self, action: #selector(tappedCloseButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
        self.addElements()
        self.addConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(backButton)
        addSubview(titlelabel)
        addSubview(emailLabel)
        addSubview(emailUITextField)
        addSubview(passwordLabel)
        addSubview(passwordUITextField)
        addSubview(loginButton)
        addSubview(separatorLeftImageView)
        addSubview(orlabel)
        addSubview(separatorRightImageView)
        addSubview(loginGoogleButton)
        
    }
    
    private func addConstraint() {
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            backButton.widthAnchor.constraint(equalToConstant: 24),
            backButton.heightAnchor.constraint(equalToConstant: 24),
            
            titlelabel.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 30),
            titlelabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            titlelabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            emailLabel.topAnchor.constraint(equalTo: titlelabel.bottomAnchor, constant: 60),
            emailLabel.leadingAnchor.constraint(equalTo: titlelabel.leadingAnchor),
            emailLabel.trailingAnchor.constraint(equalTo: titlelabel.trailingAnchor),
            
            emailUITextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 8),
            emailUITextField.leadingAnchor.constraint(equalTo: titlelabel.leadingAnchor),
            emailUITextField.trailingAnchor.constraint(equalTo: titlelabel.trailingAnchor),
            emailUITextField.heightAnchor.constraint(equalToConstant: 48),
            
            passwordLabel.topAnchor.constraint(equalTo: emailUITextField.bottomAnchor, constant: 10),
            passwordLabel.leadingAnchor.constraint(equalTo: titlelabel.leadingAnchor),
            passwordLabel.trailingAnchor.constraint(equalTo: titlelabel.trailingAnchor),
            
            passwordUITextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 8),
            passwordUITextField.leadingAnchor.constraint(equalTo: titlelabel.leadingAnchor),
            passwordUITextField.trailingAnchor.constraint(equalTo: titlelabel.trailingAnchor),
            passwordUITextField.heightAnchor.constraint(equalToConstant: 48),
            
            loginButton.topAnchor.constraint(equalTo: passwordUITextField.bottomAnchor, constant: 70),
            loginButton.leadingAnchor.constraint(equalTo: titlelabel.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: titlelabel.trailingAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 48),
            
            separatorLeftImageView.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 60),
            separatorLeftImageView.leadingAnchor.constraint(equalTo: titlelabel.leadingAnchor),
            separatorLeftImageView.widthAnchor.constraint(equalToConstant: 154),
            
            orlabel.centerYAnchor.constraint(equalTo: separatorLeftImageView.centerYAnchor),
            orlabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            separatorRightImageView.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 60),
            separatorRightImageView.trailingAnchor.constraint(equalTo: titlelabel.trailingAnchor),
            separatorRightImageView.widthAnchor.constraint(equalToConstant: 154),
            
            loginGoogleButton.topAnchor.constraint(equalTo: separatorLeftImageView.bottomAnchor, constant: 40),
            loginGoogleButton.leadingAnchor.constraint(equalTo: titlelabel.leadingAnchor),
            loginGoogleButton.trailingAnchor.constraint(equalTo: titlelabel.trailingAnchor),
            loginGoogleButton.heightAnchor.constraint(equalToConstant: 48),
            
        ])
    }
}
