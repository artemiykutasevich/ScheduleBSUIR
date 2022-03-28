//
//  ScheduleView.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 27.03.22.
//

import SwiftUI

struct ScheduleView: View {
    @StateObject private var viewModel = ScheduleViewModel()
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    var body: some View {
        NavigationView {
            ScrollView {
                DatePicker("Calendar", selection: $viewModel.date, displayedComponents: .date)
                    .datePickerStyle(.graphical)
                    .padding(.leading)
                    .padding(.trailing)
                
                Lesson(lessonType: .lecture, lessonFor: .firstSubgroup, startLessonTime: "9:00", endLessonType: "10:20", subject: "TM", cabinet: "404-5", firstName: "Кукин", lastName: "Дмитрий", middleName: "Петрович")
            }
            .safeAreaInset(edge: .bottom) {
                Color.clear.frame(height: 70)
            }
            .background(Color("Background").ignoresSafeArea())
            .navigationTitle("Schedule \(viewModel.group.description)")
        }
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ScheduleView()
            ScheduleView()
                .preferredColorScheme(.dark)
        }
    }
}
