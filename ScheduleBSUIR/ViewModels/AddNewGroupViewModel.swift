//
//  AddNewGroupViewModel.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 24.04.22.
//

import Foundation

class AddNewGroupViewModel: ObservableObject {
    @Published var textFromTextField = ""
    
    func addGroup() {
        let defaults = UserDefaults.standard
        
        var savedGroupsArray = defaults.object(forKey: "SavedGroupsArray") as? [Int] ?? [Int]()
        savedGroupsArray.append(Int(textFromTextField) ?? 0)
        
        defaults.set(savedGroupsArray, forKey: "SavedGroupsArray")
    }
    
    func clearTextField() {
        textFromTextField = ""
    }
}
