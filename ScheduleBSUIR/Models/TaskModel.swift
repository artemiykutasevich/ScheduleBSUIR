//
//  Task.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 27.05.22.
//

import Foundation

struct TaskModel: Identifiable {
    let id: UUID
    let taskType: TaskType
    let title: String
    let date: Date
    let text: String
}
