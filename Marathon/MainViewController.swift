//
//  MainViewController.swift
//  Marathon
//
//  Created by Стас on 02.05.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    let myView = UIView()
    let gradient = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        configureGradientView()
        setupConstraints()
    }
  
    private func configureGradientView() {
        view.addSubview(myView)
        
        myView.layer.addSublayer(gradient)
        myView.frame.size = CGSize(width: 125, height: 125)
        
        gradient.frame = myView.frame
        gradient.colors = [UIColor.blue.cgColor, UIColor.red.cgColor]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.cornerRadius = 15
        gradient.shadowRadius = 15
        gradient.shadowOpacity = 0.75
    }
    
    private func setupConstraints() {
        myView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            myView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            myView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -55),
        ])
    }
    
}
