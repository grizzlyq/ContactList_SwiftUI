//
//  File.swift
//  ContactList_SwiftUI
//
//  Created by Дмитрий on 25.01.2023.
//

import Foundation

struct Person: Identifiable {
    var id = UUID()
    
    let firstName: String
    let secondName: String
    let phone: String
    let email: String
    
    var fullName: String {
        firstName + " " + secondName
    }
}

extension Person {
    
    static func getRandomPerson() -> [Person] {
        
        var persons: [Person] = []
        
        let firstNames = DataManager.shared.firstName.shuffled()
        let secondNames = DataManager.shared.secondName.shuffled()
        let phones = DataManager.shared.phone.shuffled()
        let emails = DataManager.shared.email.shuffled()
        
        let iterationCount = min(firstNames.count, secondNames.count, phones.count, emails.count)
        
        for index in 0..<iterationCount {
            let personOne = (
                Person(
                    firstName: firstNames[index],
                    secondName: secondNames[index],
                    phone: phones[index],
                    email: emails[index])
                )
            persons.append(personOne)
        }
                return persons
    }
}
