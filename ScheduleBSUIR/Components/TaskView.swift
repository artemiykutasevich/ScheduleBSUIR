//
//  TaskView.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 28.03.22.
//

import SwiftUI

struct TaskView: View {
    var taskType: TaskType
    var title: String
    var date: String
    var text: String
    var width: CGFloat
    
    var body: some View {
        VStack {
            Text("")
                .titleStyle(text: title)
            Text("")
                .subBodyStyle(text: date)
            HStack {
                Circle()
                    .circleStyle(color: Color(taskType.rawValue))
                Text("")
                    .subBodyStyle(text: taskType.rawValue)
            }
            Text("")
                .bodyStyle(text: text)
        }
        .frame(width: width)
        .padding()
        .graffitiStyle(color: Color(taskType.rawValue))
    }
}

struct Task_Previews: PreviewProvider {
    static var previews: some View {
        TaskView(taskType: .custom, title: "Title", date: "19.20.2020", text: "text", width: 150)
    }
}
