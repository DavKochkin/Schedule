//
//  ContactsTableViewController.swift
//  Schedule
//
//  Created by David Kochkin on 12.07.2023.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    let idContactsCell = "idContactsCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .systemGray6
        tableView.separatorStyle = .singleLine
        tableView.bounces = false
        tableView.register(ContactsTableViewCell.self, forCellReuseIdentifier: idContactsCell)
        
        title = "Contacts"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(AddButtonTapped))
    }
    
    @objc func AddButtonTapped() {
        
        let scheduleOption = OptionsScheduleTableViewController()
        navigationController?.pushViewController(scheduleOption, animated: true)
    } 
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idContactsCell, for: indexPath) as! ContactsTableViewCell
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("TAP")
    }
}

 