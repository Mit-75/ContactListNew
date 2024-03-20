//
//  TabBarViewController.swift
//  ContactListNew
//
//  Created by Dmitry Parhomenko on 20.03.2024.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    func setupViewControllers() {
        
        let contacts = Person.getContactList()
        
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let infoListVC = viewControllers?.last as? InfoListViewController else { return }
        contactListVC.contacts = contacts
        infoListVC.contacts = contacts
    }
    
}
