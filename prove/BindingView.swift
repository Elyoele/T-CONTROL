//
//  BindingView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 22/05/21.
//

import SwiftUI

struct BindingView: View {
    
    @State private var  name = ""
    
    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Your name is \(name)")
            Text("Hello World")
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}
