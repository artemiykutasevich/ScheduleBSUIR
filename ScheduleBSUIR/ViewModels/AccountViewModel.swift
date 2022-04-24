//
//  AccountViewModel.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 27.03.22.
//

import SwiftUI

class AccountViewModel: ObservableObject {
    @AppStorage("selectedGroup") var selectedGroup = 000000
    @Published var savedGroups = [MyStudentGroup]()
    
    func wakeUp() {
        let defaults = UserDefaults.standard
        let savedGroupsArray = defaults.object(forKey: "SavedGroupsArray") as? [Int] ?? [Int]()
        
        for group in savedGroupsArray {
            savedGroups.append(MyStudentGroup(number: group)) 
        }
    }
}
