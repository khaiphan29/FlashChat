//
//  ChatViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    let messages = [Message(sender: "khai@co.co", message: "Hello"),
                    Message(sender: "123@co.co", message: "Hello"),
                    Message(sender: "khai@co.co", message: "How're you?")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func logoutButtonPressed(_ sender: UIBarButtonItem) {
    do {
        try Auth.auth().signOut()
        navigationController?.popToRootViewController(animated: true)
    } catch let signOutError as NSError {
        print("Error signing out: %@", signOutError)
    }
      
    }
    

}

extension ChatViewController: UITableViewDataSource {
    // Return the number of rows for the table.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }

    // Provide a cell object for each row.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // Fetch a cell of the appropriate type.
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! MessageCell
       
       // Configure the cell’s contents.
        cell.label.text = messages[indexPath.row].message
       return cell
    }
}
