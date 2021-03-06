//
//  MemoView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 22/05/21.
//

import SwiftUI

struct Addmemo: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var  name = ""
    @State private var  description = ""
    @State private var wakeUp = Date()
    @State private var checklistItems = [
        ChecklistItem(name: "Visits", symbol: "cross.case", color: .red, isChecked: false),
        ChecklistItem(name: "Pills", symbol: "pills", color: .blue, isChecked: false),
        ChecklistItem(name: "Injections", symbol: "drop", color: .yellow, isChecked: false),
        ChecklistItem(name: "Important", symbol: "exclamationmark.circle", color: .orange, isChecked: false),
        ChecklistItem(name: "Psychologist", symbol: "heart.text.square", color: .purple, isChecked: false),
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        TextField("Add a title", text: $name)
                        TextField("Add a description", text: $description)
                    }
                    Section {
                        DatePicker("Date", selection: $wakeUp, in: Date()...)
                    }
                    
                    ForEach(checklistItems, id: \.id) { item in
                        ChecklistItemView(name: item.name, symbol: item.symbol, color: item.color, isChecked: item.isChecked)
                        
                    }
                }
                .navigationBarItems(leading: Button(
                    action: {
                        self.presentationMode.wrappedValue.dismiss()
                    },
                    label: { Text("Cancel")
                        .foregroundColor(Color.red)
                        
                    }
                ), trailing: Button(
                    action: {
                        self.presentationMode.wrappedValue.dismiss()
                    },
                    label: { Text("Done")
                        
                    }
                ))
                .navigationTitle("Add memo")
            }
        }
        
    }
}


struct Addmemo_Previews: PreviewProvider {
    static var previews: some View {
        Addmemo()
    }
}
