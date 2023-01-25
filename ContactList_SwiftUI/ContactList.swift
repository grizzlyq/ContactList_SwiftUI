//
//  ContactList.swift
//  ContactList_SwiftUI
//
//  Created by Дмитрий on 25.01.2023.
//

import SwiftUI

struct ContactList: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                NavigationLink("\(person.firstName) \(person.secondName)") {
                    UserContact(person: person)
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(persons: Person.getRandomPerson())
    }
}
