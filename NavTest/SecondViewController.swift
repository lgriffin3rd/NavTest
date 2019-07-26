//
//  SecondViewController.swift
//  NavTest
//
//  Created by Lewis Griffin on 7/25/19.
//  Copyright © 2019 Lewis Griffin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Second VC"
        
        let messageLabel = UILabel()
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.text = "This ViewController should have a navigation title"
        
        view.addSubview(messageLabel)
        messageLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        messageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "The is the second View Controller"
        
        view.addSubview(label)
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(showNextVC), for: .touchUpInside)
        button.backgroundColor = .orange
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Show Third VC", for: .normal)
        button.layer.cornerRadius = 5
        
        view.addSubview(button)
        
        button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 150).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    @objc func showNextVC() {
        let thirdVC = ThirdViewController()
            self.navigationController?.pushViewController(thirdVC, animated: true)
//        if let nav = self.navigationController {
//            let thirdVC = ThirdViewController()
//            nav.pushViewController(thirdVC, animated: true)
//        }
    }
}
