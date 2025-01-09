//
//  NewItemViewModel.swift
//  todo-list
//
//  Created by Gabriel Lopes on 07/01/25.
//

import Foundation


class NewItemViewModel: ObservableObject {
    @Published var title = ""
    @Published var dateDue =  Date()
    @Published var showAlert = false
    
    init() {}
    
    func save() {
        let newId = UUID().uuidString
        
        TodosService.shared.save(
            id: newId,
            title: title,
            dueDate: dateDue.timeIntervalSince1970,
            createdDate: Date().timeIntervalSince1970,
            isDone: false)
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard dateDue >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
    }
}
