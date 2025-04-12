//
//  AddItem.swift
//  migraine
//
//  Created by Chrystian Guth on 12/04/2025.
//

import SwiftUI

struct AddItem: View {
    @Environment(\.dismiss) private var dismiss
    
    //New student
    @State private var name: String = ""
    @State private var age: Double = 0
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Student Name", text: $name)
                TextField("Student Age", value: $age, format: .number)
                    .keyboardType(.numberPad)
            }
            .navigationTitle("New Student")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                //Dismiss the sheet
                ToolbarItemGroup(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                
                //Save data
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button("Save") {
                        //TO-DO
                    }
                }
            }
        }
    }
}

#Preview {
    AddItem()
}
