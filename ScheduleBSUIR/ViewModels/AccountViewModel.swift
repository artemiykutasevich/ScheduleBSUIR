//
//  AccountViewModel.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 27.03.22.
//

import Foundation

class AccountViewModel: ObservableObject {
    @Published var groups = [MyStudentGroup]()
}
