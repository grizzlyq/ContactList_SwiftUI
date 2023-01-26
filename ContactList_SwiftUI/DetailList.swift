//
//  DetailList.swift
//  ContactList_SwiftUI
//
//  Created by Дмитрий on 25.01.2023.
//

import SwiftUI

struct DetailList: View {

    let persons: [Person]

    var body: some View {
        NavigationStack {
            List(persons) { person in
                Section {
                    HStack {
                        Image(systemName: "phone")
                        Text(person.phone)
                    }
                    HStack {
                        Image(systemName: "mail")
                        Text(person.email)
                    }
                } header: {
                    Text("\(person.firstName) \(person.secondName)")
                }
            }
            .navigationTitle("Contact LIst")
        }
    }
}

struct DetailList_Previews: PreviewProvider {
    static var previews: some View {
        DetailList(persons: Person.getRandomPerson())
    }
}
