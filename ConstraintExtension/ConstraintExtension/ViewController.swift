//
//  ViewController.swift
//  ConstraintExtension
//
//  Created by Roman Croitor on 07/05/2020.
//  Copyright © 2020 Roman Croitor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "Some label"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 30)
        return label
    }()
    let text: UITextView = {
        let text = UITextView()
        text.text = "Some text"
        return text
    }()
    let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Some button", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Adding custom color
        view.backgroundColor = UIColor.rgb(red: 113, green: 56, blue: 96)
        
        // Adding object to the view
        [label, text, button].forEach { (object) in
            view.addSubview(object)
        }
        
        // Adding custom constraints to the object in the view
        label.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor)
        text.anchor(top: label.bottomAnchor, leading: view.leadingAnchor, bottom: button.topAnchor, trailing: view.trailingAnchor, padding: .init(top: 64, left: 32, bottom: view.frame.height / 4, right: 32))
        button.anchor(top: nil, leading: nil, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 0, bottom: 16, right: 0), size: .init(width: 200, height: 60))
        
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }


}

