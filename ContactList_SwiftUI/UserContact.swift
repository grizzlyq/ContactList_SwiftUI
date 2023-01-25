//
//  UserContact.swift
//  ContactList_SwiftUI
//
//  Created by Дмитрий on 25.01.2023.
//

import SwiftUI

struct UserContact: View {
    
    let person: Person
    
    var body: some View {
        List{
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 130, height: 130)
                    .alignmentGuide(HorizontalAlignment.center) { _ in  60 }
                    
            HStack {
                    Image(systemName: "phone")
                    Text(person.phone)
                }
            
                HStack {
                    Image(systemName: "mail")
                    Text(person.email)
                }
        }
        .navigationTitle(Text("\(person.firstName) \(person.secondName)"))
        
    }
}

struct UserContact_Previews: PreviewProvider {
    static var previews: some View {
        UserContact(person: Person.getRandomPerson().first!)
    }
}
