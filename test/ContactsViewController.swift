//
//  ContactsViewController.swift
//  test
//
//  Created by Patrik Billgert on 2017-11-29.
//  Copyright © 2017 Patrik Billgert. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let datasource = ContactsViewControllerDataSource()
    
    lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.register(SubtitleTableViewCell.self, forCellReuseIdentifier: "SubtitleCell")
        tv.delegate = self
        tv.dataSource = self
        return tv
    }()
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    // MARK: UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contact = datasource.contacts[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "SubtitleCell", for: indexPath)
        cell.textLabel?.text = contact.name
        cell.detailTextLabel?.text = String(contact.telephone)
        return cell
    }
    
    // MARK: UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contact = datasource.contacts[indexPath.row]
        let detailsViewController = DetailsViewController(contact: contact)
        navigationController?.pushViewController(detailsViewController, animated: true)
    }
    
}

// Cell

class SubtitleTableViewCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// Datasource

class ContactsViewControllerDataSource {

    let contacts = [
        Contact(name: "Name 1", telephone: 2384834984),
        Contact(name: "Name 2", telephone: 9293349282),
        Contact(name: "Name 3", telephone: 2494939393),
        Contact(name: "Name 4", telephone: 2324234434),
        Contact(name: "Name 5", telephone: 0999999999)
    ]
    
}

// Model

struct Contact {
    
    let name: String
    let telephone: Int
    
}
