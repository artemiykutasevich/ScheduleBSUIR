//
//  ScheduleViewModel.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 27.03.22.
//

import SwiftUI

class ScheduleViewModel: ObservableObject {
    @AppStorage("selectedGroup") private var selectedGroup = 000000
    @Published var schedule: Lesson?
    
    init() {
        DispatchQueue.main.async {
            self.makeScheduleFor(group: self.selectedGroup)
        }
    }
    
    func makeScheduleFor(group: Int) {
        let url = URL(string: "https://iis.bsuir.by/api/v1/schedule?studentGroup=\(group)")!
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            switch response {
            case .none:
                print("Данных нет")
            case .some(_):
                print("Данные пришли")
                let result = try? JSONDecoder().decode(Lesson.self, from: data!)
                self.schedule = result
            }
        }
        task.resume()
    }
    
    func getTodaySchedule() -> [ScheduleModel] {
        return schedule?.todaySchedules ?? []
    }
    
    func getTomorrowSchedule() -> [ScheduleModel] {
        return schedule?.tomorrowSchedules ?? []
    }
}
