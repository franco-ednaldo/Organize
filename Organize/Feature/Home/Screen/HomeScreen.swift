//
//  TaskScreen.swift
//  Organize
//
//  Created by Ednaldo Franco on 03/12/23.
//

import UIKit

class HomeScreen: UIView {
    
    lazy var taskImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "task")
        return imageView
    }()
    
    lazy var descriptionLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "O que quer fazer hoje?"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }() 
    lazy var detailLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Clique em Atividade para adicionar uma task"
        label.font = UIFont.systemFont(ofSize: 16)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
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
        addSubview(taskImageView)
        addSubview(descriptionLabel)
        addSubview(detailLabel)
    }
    
    private func addConstraint() {
        NSLayoutConstraint.activate([
            taskImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60),
            taskImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: taskImageView.bottomAnchor, constant: 20),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            detailLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 10),
            detailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            detailLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
        ])
    }

}
