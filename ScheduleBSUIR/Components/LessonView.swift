//
//  LessonView.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 27.03.22.
//

import SwiftUI

struct LessonView: View {
    var lessonType: String
    var lessonFor: String
    var startLessonTime: String
    var endLessonType: String
    var subject: String
    var cabinet: String
    var firstName: String
    var lastName: String
    var middleName: String
    
    var body: some View {
        HStack(spacing: 32) {
            VStack(alignment: .leading, spacing: 0) {
                Text("")
                    .titleStyle(text: startLessonTime)
                Text("")
                    .subTitleStyle(text: endLessonType)
                if lessonFor != "0" {
                    Text("")
                        .subBodyStyle(text: "Подгр. \(lessonFor)")
                }
            }
            
            VStack(alignment: .leading, spacing: 0) {
                Text("")
                    .titleStyle(text: subject)
                    .lineLimit(1)
                    .minimumScaleFactor(0.3)
                HStack {
                    Circle()
                        .circleStyle(color: Color(lessonType))
                    Text("")
                        .subBodyStyle(text: lessonType)
                }
                Text("")
                    .subBodyStyle(text: cabinet)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
            }
            
            VStack(alignment: .leading, spacing: 0) {
                Text("")
                    .bodyStyle(text: firstName)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                Text("")
                    .subBodyStyle(text: lastName)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                Text("")
                    .subBodyStyle(text: middleName)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
            }
            
            Spacer()
        }
        .padding()
        .graffitiStyleView(color: Color(lessonType))
    }
}

struct Lesson_Previews: PreviewProvider {
    static var previews: some View {
        LessonView(lessonType: "ЛР", lessonFor: "", startLessonTime: "9:00", endLessonType: "10:20", subject: "TM", cabinet: "404-5k", firstName: "Кукин", lastName: "Дмитрий", middleName: "Петрович")
    }
}
