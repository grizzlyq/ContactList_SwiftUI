//
//  ContentView.swift
//  ContactList_SwiftUI
//
//  Created by Дмитрий on 25.01.2023.
//

import SwiftUI

struct ContentView: View {
    private var contactsList = Person.getRandomPerson()
    
    var body: some View {
       
            TabView {
                ContactList(persons: contactsList)
                    .tabItem{
                        Image(systemName: "person.3")
                        Text("Contacts")
                    }
                DetailList(persons: contactsList)
                    .tabItem{
                        Image(systemName: "phone")
                        Text("Numbers")
                    }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
