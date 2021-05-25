//
//  Addupdate.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 24/05/21.
//

import SwiftUI

struct Addupdate: View {
    
    @State private var  name = ""
    
    var body: some View {
        VStack{
            
            Form {
                TextField("Add a title", text: $name)
        }
        }
    }
}

struct Addupdate_Previews: PreviewProvider {
    static var previews: some View {
        Addupdate()
    }
}
