//
//  TasksView.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 27.03.22.
//

import SwiftUI

struct TasksView: View {
    @StateObject private var viewModel = TasksViewModel()
    var columns: [GridItem] = Array(repeating: .init(.adaptive(minimum: 150, maximum: .infinity)), count: 2)
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    Text("Some buddy like you")
                }
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
