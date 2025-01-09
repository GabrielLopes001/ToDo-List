//
//  SwiftUIView.swift
//  todo-list
//
//  Created by Gabriel Lopes on 07/01/25.
//

import SwiftUI

struct NewItem: View {
    @StateObject var viewModel = NewItemViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("New Item", text: $viewModel.title)
                
                DatePicker("Date Due", selection: $viewModel.dateDue)
                    .datePickerStyle(.graphical)
                
                Button {
                    if (viewModel.canSave) {
                        viewModel.save()
                    } else {
                        viewModel.showAlert = true
                    }
                } label: {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color(.systemPink))
                        .frame(height: 44)
                        .overlay(Text("Create").foregroundStyle(.white))
                }
            }
            .padding()
            .navigationTitle("New Item")
            .alert(isPresented: $viewModel.showAlert, content: {
                Alert(title: Text("Error"),
                      message: Text("Please fill in all fields.")
                )
            })
        }
    }
}

#Preview {
    NewItem()
}
