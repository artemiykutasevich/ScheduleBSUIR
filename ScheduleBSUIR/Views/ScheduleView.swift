//
//  ScheduleView.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 27.03.22.
//

import SwiftUI

struct ScheduleView: View {
    @StateObject private var viewModel = ScheduleViewModel()
    @State private var today = true
    
    // MARK: - body
    var body: some View {
        NavigationView {
            ScrollView {
                head
                
                if today && viewModel.getTodaySchedule().isEmpty {
                    Text("")
                        .subTitleStyle(text: "No classes today, take a rest, buddy")
                        .multilineTextAlignment(.center)
                        .padding()
                }
                
                if !today && viewModel.getTomorrowSchedule().isEmpty {
                    Text("")
                        .subTitleStyle(text: "Tomorrow there are no classes, you can relax")
                        .multilineTextAlignment(.center)
                        .padding()
                }
                
                ForEach(today ? viewModel.getTodaySchedule() : viewModel.getTomorrowSchedule()) { lesson in
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
            .navigationTitle("Schedule \(viewModel.schedule?.studentGroup?.name ?? "000000")")
        }
    }
    
    // MARK: - head
    var head: some View {
        HStack {
            Spacer()
            Button(action: {
                today = true
            }) {
                Text("")
                    .titleStyle(text: "Today")
                    .padding(today ? 16 : 8)
                    .graffitiStyleView(color: today ? Color("Main") : .gray)
            }
            Spacer()
            Button(action: {
                today = false
            }) {
                Text("")
                    .titleStyle(text: "Tomorrow")
                    .padding(today ? 8 : 16)
                    .graffitiStyleView(color: today ? .gray : Color("Main"))
            }
            Spacer()
        }
        .padding()
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
