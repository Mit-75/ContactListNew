//
//  Person.swift
//  ContactListNew
//
//  Created by Dmitry Parhomenko on 20.03.2024.
//

import Foundation

struct Person {
    
    let name: String
    let surname: String
    let phoneNumbers: String
    let emails: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let dataStore = DataStore.shared
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let phoneNambers = dataStore.phoneNumbers.shuffled()
        let emails = dataStore.emails.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            phoneNambers.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumbers: phoneNambers[index],
                emails: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
    
}



