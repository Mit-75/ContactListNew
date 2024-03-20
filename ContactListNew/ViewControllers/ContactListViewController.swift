//
//  ContactListViewController.swift
//  ContactListNew
//
//  Created by Dmitry Parhomenko on 20.03.2024.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    var contacts: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let contactInfoVS = segue.destination as? ContactInfoViewController else { return }
            contactInfoVS.contact = contacts[indexPath.row]
        }
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "showContactList", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = contacts[indexPath.row]
        content.text = person.name
        content.secondaryText = person.surname
        content.image = UIImage(systemName: "person.circle.fill")
        cell.contentConfiguration = content
        return cell
    }
    

    
}
