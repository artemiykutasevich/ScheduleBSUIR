//
//  TasksViewModel.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 27.03.22.
//

import Foundation

class TasksViewModel: ObservableObject {
    @Published var tasks = [TaskModel]()
    
    init() {
        
    }
}
