//
//  TodoCell.swift
//  ToDo_SwiftUI
//
//  Created by Umut SERIFLER on 5.12.2021.
//

import SwiftUI

struct TodoCell: View {
    @ObservedObject var todo: Todo
    var body: some View {
        HStack {
            Text(todo.todoDescription ?? "")
                .foregroundColor(.black)
                .strikethrough(todo.isComplete, color: .black)
            Spacer()
            if !todo.isComplete && todo.isImportant{
                Image(systemName: "exclamationmark.triangle.fill").foregroundColor(Color.red).imageScale(.large)
            }
        }
    }
}
