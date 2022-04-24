//
//  AccountView.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 27.03.22.
//

import SwiftUI

struct AccountView: View {
    @StateObject private var viewModel = AccountViewModel()
    @State private var sheetActive = false
    
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
                            .foregroundColor(Color("Background"))
                            .background(Color("Main"), in: Circle())
                        Text("")
                            .titleStyle(text: "Group \(viewModel.selectedGroup)")
                            .foregroundColor(.white)
                    }
                }
                .padding()
                .graffitiStyleView(color: Color("Main"))
                
                ForEach(viewModel.savedGroups) { group in
                    Button(action: {
                        viewModel.selectedGroup = group.number
                    }, label: {
                        HStack {
                            if group.number == viewModel.selectedGroup {
                                Text("\(group.number.description)")
                                    .foregroundColor(.primary)
                                    .fontWeight(.semibold)
                                Spacer()
                                Image(systemName: "checkmark")
                                    .foregroundColor(.primary)
                            } else {
                                Text("\(group.number.description)")
                                    .foregroundColor(.primary)
                                Spacer()
                            }
                        }
                        .padding()
                        .graffitiStyleView(color: Color("Main"))
                    })
                }
                
                Button(action: {
                    sheetActive = true
                }, label: {
                    Text("")
                        .bodyStyle(text: "+ Add new group")
                })
                .padding()
                .graffitiStyleView(color: Color("Main"))
            }
            .sheet(isPresented: $sheetActive) {
                AddNewGroupView()
            }
            .safeAreaInset(edge: .bottom) {
                Color.clear.frame(height: 70)
            }
            .background(Color("Background").ignoresSafeArea())
            .navigationTitle("Account")
        }
        .onAppear() {
            viewModel.wakeUp()
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
