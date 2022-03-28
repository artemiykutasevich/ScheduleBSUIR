//
//  AccountView.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 27.03.22.
//

import SwiftUI

struct AccountView: View {
    @StateObject private var viewModel = AccountViewModel()
    
    init() {
        UITableView.appearance().backgroundColor = UIColor(Color("Background"))
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                HStack(alignment: .center) {
                    VStack {
                        Image(systemName: "person")
                            .font(.largeTitle)
                            .padding()
                            .foregroundColor(.primary)
                            .background(Color("Main"), in:
                                            Circle()
                            )
                        Text("")
                            .titleStyle(text: "Group 924404")
                            .foregroundColor(.white)
                    }
                }
                .padding()
                .graffitiStyle(color: Color("Main"))
                
                ForEach(viewModel.groups) { group in
                    Button(action: {
                        // MARK: add logic
                    }, label: {
                        HStack {
                            Text("924404")
                                .foregroundColor(.primary)
                            Spacer()
                            // MARK: add logic
                            if group.number == 3 {
                                Image(systemName: "checkmark")
                            }
                        }
                    })
                    .padding()
                }
                
                Button(action: {
                    // MARK: add logic
                }, label: {
                    Label("Add new group", systemImage: "plus")
                })
                .padding()
                .graffitiStyle(color: .blue)
            }
            .safeAreaInset(edge: .bottom) {
                Color.clear.frame(height: 70)
            }
            .background(Color("Background").ignoresSafeArea())
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
