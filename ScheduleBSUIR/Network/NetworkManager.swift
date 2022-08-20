//
//  NetworkManager.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 20.08.22.
//

import Foundation

class NetworkManager {
    static let networkManager = NetworkManager()
    
    private init() { /* Singleton */ }
    
    func getScheduleFor(group: Int) async throws -> Lesson {
        guard let url = URL(string: "https://iis.bsuir.by/api/v1/schedule?studentGroup=\(group)") else {
            throw NetworkErrors.invalidURL
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        let lesson = try JSONDecoder().decode(Lesson.self, from: data)
        
        return lesson
    }
}
