//
//  TabItem.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 27.03.22.
//

import Foundation

struct TabItem: Identifiable {
    var id = UUID()
    var text: String
    var icon: String
    var tab: Tab
}

let tabItems = [
    TabItem(text: "Tasks", icon: "list.number", tab: .tasks),
    TabItem(text: "Schedule", icon: "calendar", tab: .schedule),
    TabItem(text: "Account", icon: "person", tab: .account)
]
