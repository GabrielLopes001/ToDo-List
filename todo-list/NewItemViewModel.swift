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
    
    func save() {}
    
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
