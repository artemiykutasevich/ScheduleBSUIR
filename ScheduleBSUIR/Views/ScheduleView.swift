//
//  ScheduleView.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 27.03.22.
//

import SwiftUI

struct ScheduleView: View {
    @StateObject private var viewModel = ScheduleViewModel()
    @State var today = true
    
    var body: some View {
        NavigationView {
            ScrollView {
                head
                
                if today && viewModel.getTodaySchedule().isEmpty {
                    Text("")
                        .subTitleStyle(text: "Сегодня занятий нет, отдохни, дружище")
                }
                
                if !today && viewModel.getTomorrowSchedule().isEmpty {
                    Text("")
                        .subTitleStyle(text: "Завтра занятий нет, можно отдохнуть")
                }
                
                if today {
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
            }
            .safeAreaInset(edge: .bottom) {
                Color.clear.frame(height: 70)
            }
            .background(Color("Background").ignoresSafeArea())
            .navigationTitle("Schedule \(viewModel.schedule?.studentGroup?.name ?? "00000")")
        }
    }
    
    var head: some View {
        HStack {
            Spacer()
            Button(action: {
                today = true
            }) {
                Text("")
                    .titleStyle(text: "Сегодня")
                    .padding(today ? 16 : 8)
                    .graffitiStyle(color: today ? .blue : .gray)
            }
            Spacer()
            Button(action: {
                today = false
            }) {
                Text("")
                    .titleStyle(text: "Завтра")
                    .padding(today ? 8 : 16)
                    .graffitiStyle(color: today ? .gray : .blue)
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
