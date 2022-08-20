//
//  AddNewGroupView.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 24.04.22.
//

import SwiftUI

struct AddNewGroupView: View {
    @StateObject private var viewModel = AddNewGroupViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("new group", text: $viewModel.textFromTextField)
                    .padding()
                    .keyboardType(.numberPad)
                    .graffitiStyleTextField()
                
                Button(action: {
                    viewModel.addGroup()
                    viewModel.clearTextField()
                }, label: {
                    Text("")
                        .bodyStyle(text: "Add group")
                })
                .padding()
                .graffitiStyleView(color: Color("Main"))
                
                Spacer()
            }
            .background(Color("Background").ignoresSafeArea())
            .navigationTitle("Add new group")
        }
    }
}

struct AddNewGroupView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewGroupView()
    }
}
