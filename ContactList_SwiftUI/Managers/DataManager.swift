//
//  DataManager.swift
//  ContactList_SwiftUI
//
//  Created by Дмитрий on 25.01.2023.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let firstName = ["Елена", "Виктория", "Екатерина", "Мария", "Анастасия",
                     "Ольга", "Татьяна", "Марина", "Анна", "Надежда"]
    
    let secondName = ["Дмитровна", "Ивановна", "Петрова", "Гурченко", "Мельникова",
                      "Дегтярева", "Кузьминова", "Мартыненко", "Захарова", "Кринжова"]
    
    let phone = ["8912999999", "8912888888", "8912777777", "8912666666", "8912555555",
                 "8912444444", "8912333333", "8912222222", "8912111111", "8912000000"]
    
    let email = ["a@gmail.com", "b@gmail.com", "c@gmail.com", "d@gmail.com", "f@gmail.com",
                 "q@gmail.com", "t@gmail.com", "a@gmail.com", "e@gmail.com", "g@gmail.com"]
    
    private init() {}
}
