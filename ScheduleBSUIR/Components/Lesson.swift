//
//  Lesson.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 27.03.22.
//

import SwiftUI

struct Lesson: View {
    var lessonType: LessonType
    var lessonFor: LessonFor
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
                Text("")
                    .subBodyStyle(text: lessonFor.rawValue)
            }
            
            VStack(alignment: .leading, spacing: 0) {
                Text("")
                    .titleStyle(text: subject)
                HStack {
                    Circle()
                        .circleStyle(color: Color(lessonType.rawValue))
                    Text("")
                        .subBodyStyle(text: lessonType.rawValue)
                }
                Text("")
                    .subBodyStyle(text: cabinet)
            }
            
            VStack(alignment: .leading, spacing: 0) {
                Text("")
                    .bodyStyle(text: firstName)
                Text("")
                    .subBodyStyle(text: lastName)
                Text("")
                    .subBodyStyle(text: middleName)
            }
            
            Spacer()
        }
        .padding()
        .graffitiStyle(color: Color(lessonType.rawValue))
    }
}

struct Lesson_Previews: PreviewProvider {
    static var previews: some View {
        Lesson(lessonType: .practice, lessonFor: .firstSubgroup, startLessonTime: "9:00", endLessonType: "10:20", subject: "TM", cabinet: "404-5k", firstName: "Кукин", lastName: "Дмитрий", middleName: "Петрович")
    }
}
