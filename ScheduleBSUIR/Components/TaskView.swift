//
//  TaskView.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 28.03.22.
//

import SwiftUI

struct TaskView: View {
    let task: TaskModel
    let width: CGFloat
    
    var body: some View {
        VStack {
            Text("")
                .titleStyle(text: task.title)
            Text("")
                .subBodyStyle(text: task.date.description)
            HStack {
                Circle()
                    .circleStyle(color: Color(task.taskType.rawValue))
                Text("")
                    .subBodyStyle(text: task.taskType.rawValue)
            }
            Text("")
                .bodyStyle(text: task.text)
        }
        .frame(width: width)
        .padding()
        .graffitiStyleView(color: Color(task.taskType.rawValue))
    }
}

struct Task_Previews: PreviewProvider {
    static var previews: some View {
        TaskView(
            task: TaskModel(
                id: UUID(),
                taskType: .custom,
                title: "title",
                date: Date(),
                text: "some text"),
            width: 200)
    }
}
