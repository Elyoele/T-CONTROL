//
//  AlertView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 22/05/21.
//

import SwiftUI

struct AlertView: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        Button("NON PREMERE QUI") {
            self.showingAlert = true
        }
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("SEI COGLION*"), message: Text("Ti avevo detto di non premere, tra 2 minuti esploderà l'iphone -.-"), dismissButton: .default(Text("fanculo")))
        }
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
