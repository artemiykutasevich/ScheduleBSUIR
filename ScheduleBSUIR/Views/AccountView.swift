//
//  AccountView.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 27.03.22.
//

import SwiftUI

struct AccountView: View {
    @StateObject private var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                HStack(alignment: .center) {
                    VStack {
                        Image(systemName: "person")
                            .font(.largeTitle)
                            .padding()
                            .foregroundColor(Color("Background"))
                            .background(Color("Main"), in: Circle())
                        Text("")
                            .titleStyle(text: "Group \(viewModel.selectedGroup)")
                            .foregroundColor(.white)
                    }
                }
            }
            .navigationTitle("Account")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AccountView()
            AccountView()
                .preferredColorScheme(.dark)
        }
    }
}
