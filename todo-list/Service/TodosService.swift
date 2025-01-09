//
//  TodosService.swift
//  todo-list
//
//  Created by Gabriel Lopes on 08/01/25.
//

import Foundation
import FirebaseFirestore



//id: newId, title: title,
//dueDate: dateDue.timeIntervalSince1970,
//createdDate: Date().timeIntervalSince1970,
//isDone: false

struct TodosService {
    static var shared = TodosService()
    
    
    func save(id: String, title: String, dueDate: TimeInterval, createdDate: TimeInterval, isDone: Bool) {
        let db = Firestore.firestore()
        
        let newItem = TodoListItem(
            id: id,
            title: title,
            dueDate: dueDate,
            createdDate: Date().timeIntervalSince1970,
            isDone: false
        )
        
        do {
            try db.collection("todos").document(id).setData(from: newItem)
        } catch {
            print(error.localizedDescription)
        }
        
        
    }
    
}
