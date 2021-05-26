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
                
                VStack {
                    HStack(alignment: .center)  {
                        Chips(systemImage: "cross.case", titleKey: "psycho", isSelected: false)
                        Chips(systemImage: "cross.circle", titleKey: "visits", isSelected: false)
                        Chips(systemImage: "exclamationmark.circle", titleKey: "important", isSelected: false)
                    }
                    HStack(alignment: .center)  {
                        Chips(systemImage: "pills", titleKey: "pills", isSelected: false)
                        Chips(systemImage: "drop", titleKey: "injections", isSelected: false)
                        Chips(systemImage: "person.2", titleKey: "family", isSelected: false)
                    }
                    HStack(alignment: .center)  {
                        Chips(systemImage: "pills", titleKey: "ex.1", isSelected: false)
                        Chips(systemImage: "pills", titleKey: "ex.2", isSelected: false)
                        Chips(systemImage: "pills", titleKey: "ex.3", isSelected: false)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical)
            }
            .navigationBarItems(trailing: Button(
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
