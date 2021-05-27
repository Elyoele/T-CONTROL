//
//  Addupdate.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 24/05/21.
//

import SwiftUI

struct Addupdate: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var  name = ""
    @State private var  description = ""
    @State private var  emoticon = ""
    @State private var wakeUp = Date()
    @State private var scEmojiItems = [
        ScEmojiEntry(name: "Visits", emoticon: "🥰", isChecked: false),
        ScEmojiEntry(name: "Pills", emoticon: "😭", isChecked: false),
        ScEmojiEntry(name: "Injections", emoticon: "😔", isChecked: false),
        ScEmojiEntry(name: "Important", emoticon: "🤩", isChecked: false),
        ScEmojiEntry(name: "Psychologist", emoticon: "🙂", isChecked: false),
    ]
    
    var body: some View {
        NavigationView {
        VStack {
            Form {

                Section {
                        TextField("Add a title", text: $name)
                    TextField("Add a description", text: $description)

                }
                
                ForEach(scEmojiItems, id: \.id) { item in
                    ScEmoji(name: item.name, emoticon: item.emoticon, isChecked: item.isChecked)}
                    
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
            .navigationTitle("Add Update")
            }
        
        }
    }
}

struct Addupdate_Previews: PreviewProvider {
    static var previews: some View {
        Addupdate()
    }
}
