//
//  RegisterScreen.swift
//  Organize
//
//  Created by Ednaldo Franco on 03/12/23.
//

import UIKit

class RegisterScreen: UIView {
    
    lazy var backButton:UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(UIImage(named: "back"), for: .normal)
        return btn
    }()
    
    lazy var titleLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        label.text = "Registre-se"
        return label
    }()
    
    lazy var emailLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "E-mail"
        label.textColor = .white
        return label
    }()
    
    lazy var emailTextField:UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.backgroundColor = UIColor(red: 29/255, green: 29/255, blue: 29/225, alpha: 1.0)
        text.textColor = .white
        text.clipsToBounds = true
        text.layer.cornerRadius = 4
        text.layer.borderWidth = 1
        text.layer.borderColor = UIColor(red: 151/255, green: 151/255, blue: 151/225, alpha: 1.0).cgColor
        text.attributedPlaceholder = NSAttributedString(string: "Entre com o email",
                                                        attributes: [NSAttributedString.Key.foregroundColor : UIColor.white.withAlphaComponent(0.40)])
        let leftSpaceView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: text.frame.size.height))
        text.leftView = leftSpaceView
        text.leftViewMode = .always
        return text
    }()
    
    lazy var passwordLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "Senha"
        label.textColor = .white
        return label
    }()
    
    lazy var passwordTextField:UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.backgroundColor = UIColor(red: 29/255, green: 29/255, blue: 29/225, alpha: 1.0)
        text.textColor = .white
        text.clipsToBounds = true
        text.layer.cornerRadius = 4
        text.layer.borderWidth = 1
        text.layer.borderColor = UIColor(red: 151/255, green: 151/255, blue: 151/225, alpha: 1.0).cgColor
        text.attributedPlaceholder = NSAttributedString(string: "Entre com a senha",
                                                        attributes: [NSAttributedString.Key.foregroundColor : UIColor.white.withAlphaComponent(0.40)])
        
        let leftSpaceView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: text.frame.size.height))
        text.leftView = leftSpaceView
        text.leftViewMode = .always
        text.isSecureTextEntry = true
        
        return text
    }()
    
    lazy var confirmPasswordLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "Confirme a senha"
        label.textColor = .white
        return label
    }()
    
    lazy var passwordConfirmTextField:UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.backgroundColor = UIColor(red: 29/255, green: 29/255, blue: 29/225, alpha: 1.0)
        text.textColor = .white
        text.clipsToBounds = true
        text.layer.cornerRadius = 4
        text.layer.borderWidth = 1
        text.layer.borderColor = UIColor(red: 151/255, green: 151/255, blue: 151/225, alpha: 1.0).cgColor
        text.attributedPlaceholder = NSAttributedString(string: "Confirme a senha",
                                                        attributes: [NSAttributedString.Key.foregroundColor : UIColor.white.withAlphaComponent(0.40)])
        
        let leftSpaceView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: text.frame.size.height))
        text.leftView = leftSpaceView
        text.leftViewMode = .always
        text.isSecureTextEntry = true
        return text
    }()
    
    
    lazy var registerButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 136/255, green: 117/255, blue: 255/255, alpha: 1.0)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.tintColor = .white
        button.setTitle("Salvar", for: .normal)
        // button.addTarget(self, action: #selector(navHomeButton), for: .touchUpInside)
        return button
    }()
    
    
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
        button.setTitle("Registre-se com google", for: .normal)
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
        self.addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(backButton)
        addSubview(titleLabel)
        addSubview(emailLabel)
        addSubview(emailTextField)
        addSubview(passwordLabel)
        addSubview(passwordTextField)
        addSubview(confirmPasswordLabel)
        addSubview(passwordConfirmTextField)
        addSubview(registerButton)
        
        addSubview(separatorLeftImageView)
        addSubview(orlabel)
        addSubview(separatorRightImageView)
        addSubview(loginGoogleButton)
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            titleLabel.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 30),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            emailLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 60),
            emailLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            emailLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 10),
            emailTextField.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: 48),
            
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 8),
            passwordLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            passwordLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
        
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 10),
            passwordTextField.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 48), 
            
            confirmPasswordLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 8),
            confirmPasswordLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            confirmPasswordLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
        
            
            passwordConfirmTextField.topAnchor.constraint(equalTo: confirmPasswordLabel.bottomAnchor, constant: 10),
            passwordConfirmTextField.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            passwordConfirmTextField.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            passwordConfirmTextField.heightAnchor.constraint(equalToConstant: 48),
            
            
            registerButton.topAnchor.constraint(equalTo: passwordConfirmTextField.bottomAnchor, constant: 45),
            registerButton.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            registerButton.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            registerButton.heightAnchor.constraint(equalToConstant: 48),
            
            separatorLeftImageView.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 40),
            separatorLeftImageView.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            separatorLeftImageView.widthAnchor.constraint(equalToConstant: 154),
            
            orlabel.centerYAnchor.constraint(equalTo: separatorLeftImageView.centerYAnchor),
            orlabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            separatorRightImageView.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 40),
            separatorRightImageView.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            separatorRightImageView.widthAnchor.constraint(equalToConstant: 154),
            
            loginGoogleButton.topAnchor.constraint(equalTo: separatorLeftImageView.bottomAnchor, constant: 40),
            loginGoogleButton.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            loginGoogleButton.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            loginGoogleButton.heightAnchor.constraint(equalToConstant: 48),
            
            
        ])
    }
    
}
