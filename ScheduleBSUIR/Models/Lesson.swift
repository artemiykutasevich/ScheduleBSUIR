//
//  Lesson.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 1.04.22.
//

import Foundation

struct Lesson: Codable {
    let studentGroup: StudentGroup?
    let schedules: [Schedule]
    //    var examSchedules: [Schedule]
    let todayDate: String?
    let todaySchedules: [ScheduleModel]?
    //    var tomorrowDate: String
    let tomorrowSchedules: [ScheduleModel]
    let currentWeekNumber: Int?
    let dateStart: String?
    let dateEnd: String?
    let sessionStart: String?
    let sessionEnd: String?
}

struct StudentGroup: Codable {
    let name: String
    let facultyID: Int
    let facultyName: String
    let specialityDepartmentEducationFormID: Int
    let specialityName: String
    let course: Int
    let id: Int
    let calendarID: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case facultyID = "facultyId"
        case facultyName
        case specialityDepartmentEducationFormID = "specialityDepartmentEducationFormId"
        case specialityName, course, id
        case calendarID = "calendarId"
    }
}

struct Schedule: Codable {
    let weekDay: String
    let schedule: [RealSchedule]
    
    struct RealSchedule: Codable {
        let weekNumber: [Int]?
        let studentGroup: [String]?
        let studentGroupInformation: [String]?
        let numSubgroup: Int?
        let auditory: [String]?
        let lessonTime: String?
        let startLessonTime: String?
        let endLessonTime: String?
        let subject: String?
        let subjectFullName: String?
        let lessonType: String?
        let employee: [Employee]?
        let zaoch: Bool?
        
        struct Employee: Codable {
            let firstName: String
            let lastName: String
            let middleName: String
            let degree: String
            let photoLink: String
            let calendarID: String
            let academicDepartment: [String]
            let id: Int
            let urlID: String
            let fio: String
            
            enum CodingKeys: String, CodingKey {
                case firstName, lastName, middleName, degree, photoLink
                case calendarID = "calendarId"
                case academicDepartment, id
                case urlID = "urlId"
                case fio
            }
        }
    }
}

struct ScheduleModel: Codable, Identifiable {
    let id = UUID()
    
    let weekNumber: [Int]?
    let studentGroup: [String]?
    let studentGroupInformation: [String]?
    let numSubgroup: Int?
    let auditory: [String]?
    let lessonTime: String?
    let startLessonTime: String?
    let endLessonTime: String?
    let subject: String?
    let subjectFullName: String?
    let lessonType: String?
    let employee: [Employee]?
    let zaoch: Bool?
    
    struct Employee: Codable {
        let firstName: String
        let lastName: String
        let middleName: String
        let degree: String
        let photoLink: String
        let calendarID: String
        let academicDepartment: [String]
        let id: Int
        let urlID: String
        let fio: String
        
        enum CodingKeys: String, CodingKey {
            case firstName, lastName, middleName, degree, photoLink
            case calendarID = "calendarId"
            case academicDepartment, id
            case urlID = "urlId"
            case fio
        }
    }
}
