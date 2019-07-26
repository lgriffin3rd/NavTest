//
//  ThirdViewController.swift
//  NavTest
//
//  Created by Lewis Griffin on 7/25/19.
//  Copyright © 2019 Lewis Griffin. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor  = .white
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(goBack))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addvC))
        self.title = "Hmmm"
        
        self.navigationItem.title = "Third VC"
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "The is the third View Controller"
        
        view.addSubview(label)
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    @objc func addvC() {
        self.navigationController?.pushViewController(FourthViewController(), animated: true)
    }
    
    @objc func goBack() {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
