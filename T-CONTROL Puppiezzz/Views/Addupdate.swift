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
            VStack(alignment: .leading) {
                Text("ciao")
                    .font(.title)
            }
            .frame(maxWidth: .infinity)

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
