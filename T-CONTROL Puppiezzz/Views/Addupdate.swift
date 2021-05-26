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
    
    var body: some View {
        
        NavigationView {

                Form {
                    Section {
                        TextField("Add a title", text: $name)
                    }

                    Section {
                        TextField("Add a title", text: $name)
                    }

                    Section {
                        TextField("Add a title", text: $name)
                    }

            }
        }
        .navigationTitle(Text("New update"))
    }
}

struct Addupdate_Previews: PreviewProvider {
    static var previews: some View {
        Addupdate()
    }
}
