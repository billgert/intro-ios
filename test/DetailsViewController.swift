//
//  DetailsViewController.swift
//  test
//
//  Created by Patrik Billgert on 2017-11-29.
//  Copyright © 2017 Patrik Billgert. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    let telephoneLabel = UILabel()
    
    // MARK: Initialization
    
    init(contact: Contact) {
        super.init(nibName: nil, bundle: nil)
        navigationItem.title = contact.name
        telephoneLabel.text = String(contact.telephone)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(telephoneLabel)
        telephoneLabel.translatesAutoresizingMaskIntoConstraints = false
        telephoneLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        telephoneLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

}
