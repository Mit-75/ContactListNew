//
//  ContactInfoViewController.swift
//  ContactListNew
//
//  Created by Dmitry Parhomenko on 20.03.2024.
//

import UIKit

final class ContactInfoViewController: UIViewController {
    
    var contact: Person!
    
    @IBOutlet var fulnameLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fulnameLabel.text = "\(contact.name)  \(contact.surname)"
        phoneLabel.text = "Phone: \(contact.phoneNumbers)"
        emailLabel.text = "Email: \(contact.emails)"
    }
}
