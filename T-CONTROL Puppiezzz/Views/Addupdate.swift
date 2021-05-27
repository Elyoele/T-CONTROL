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
    
    var body: some View {
        NavigationView {
        VStack {
            Form {
                Section {
                    TextField("Add a title", text: $name)
                }
                Section {
                    TextField("😥🤩🥱", text: $emoticon)
                }
                Section {
                    TextField("Add a description", text: $description)
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
