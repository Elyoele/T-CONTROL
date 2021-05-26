//
//  MemoView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 22/05/21.
//

import SwiftUI

struct Addmemo: View {
    
    @State private var  name = ""
    @State private var  description = ""
    @State private var wakeUp = Date()
    
    var body: some View {
        VStack {
            
            Form {
                
                TextField("Add a title", text: $name)
                TextField("Add a description", text: $description)
                DatePicker("ciao", selection: $wakeUp, in: Date()...)
                
            }
        }
    }
}
struct Addmemo_Previews: PreviewProvider {
    static var previews: some View {
        Addmemo()
    }
}
