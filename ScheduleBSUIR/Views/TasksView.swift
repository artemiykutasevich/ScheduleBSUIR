//
//  TasksView.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 27.03.22.
//

import SwiftUI

struct TasksView: View {
    @StateObject private var viewModel = TasksViewModel()
    var taskWidth = UIScreen.main.bounds.width / 2 - 60
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(0..<5) { _ in
                    HStack(spacing: 0) {
                        TaskView(taskType: .custom, title: "oleg", date: "dkdkkd", text: "ffkfk", width: taskWidth)
                        TaskView(taskType: .university, title: "good play", date: "sksks", text: "djdjdj", width: taskWidth)
                    }
                }
            }
            .safeAreaInset(edge: .bottom) {
                Color.clear.frame(height: 70)
            }
            .background(Color("Background").ignoresSafeArea())
            .navigationTitle("Tasks")
        }
    }
}

struct TasksView_Previews: PreviewProvider {
    static var previews: some View {
        TasksView()
    }
}
