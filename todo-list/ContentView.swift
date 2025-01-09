//
//  ContentView.swift
//  todo-list
//
//  Created by Gabriel Lopes on 07/01/25.
//

import SwiftUI

struct ContentView: View {
    @State var isShowingNewItemView = false
    
    var body: some View {
        NavigationStack {
            VStack {
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isShowingNewItemView = true
                    } label: {
                        Image(systemName: "plus")
                            .foregroundStyle(.pink)
                    }
                }
            }
            .sheet(isPresented: $isShowingNewItemView, content: {
                NewItem()
            })
        }
    }
}

#Preview {
    ContentView()
}
