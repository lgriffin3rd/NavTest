//
//  FourthViewController.swift
//  NavTest
//
//  Created by Lewis Griffin on 7/25/19.
//  Copyright © 2019 Lewis Griffin. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        self.navigationItem.title = "Fourth VC"
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "The is the fourth View Controller"
        
        view.addSubview(label)
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
