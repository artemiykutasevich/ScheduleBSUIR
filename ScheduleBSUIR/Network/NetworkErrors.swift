//
//  NetworkErrors.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 20.08.22.
//

import Foundation

enum NetworkErrors: Error, LocalizedError {
    case invalidURL
    case noSignal
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Bad URL"
        case .noSignal:
            return "No signal"
        }
    }
}
