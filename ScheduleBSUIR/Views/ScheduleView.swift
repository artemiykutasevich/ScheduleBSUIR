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
                
                ForEach(viewModel.schedule?.todaySchedules ?? []) { lesson in
                    LessonView(
                        lessonType: lesson.lessonType ?? "",
                        lessonFor: lesson.numSubgroup?.description ?? "",
                        startLessonTime: lesson.startLessonTime ?? "",
                        endLessonType: lesson.endLessonTime ?? "",
                        subject: lesson.subject ?? "",
                        cabinet: lesson.auditory?.first ?? "",
                        firstName: lesson.employee?.first?.lastName ?? "",
                        lastName: lesson.employee?.first?.firstName ?? "",
                        middleName: lesson.employee?.first?.middleName ?? "")
                }
            }
            .safeAreaInset(edge: .bottom) {
                Color.clear.frame(height: 70)
            }
            .background(Color("Background").ignoresSafeArea())
            .navigationTitle("Schedule \(viewModel.schedule?.studentGroup?.name ?? "111111")")
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
