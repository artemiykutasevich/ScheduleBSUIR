//
//  ContentView.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 27.03.22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("selectedTab") var selectedTab: Tab = .account
    
    var body: some View {
        ZStack {
            Group {
                switch selectedTab {
                case .tasks:
                    TasksView()
                case .schedule:
                    ScheduleView()
                case .account:
                    AccountView()
                }
            }
            TabBar()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
