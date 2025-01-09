//
//  TodoListItem.swift
//  todo-list
//
//  Created by Gabriel Lopes on 08/01/25.
//

import Foundation


struct TodoListItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    
    mutating func 
}