//
//  ConditionalView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 23/05/21.
//

import SwiftUI

struct ConditionalView: View {
    var motto1: some View { Text("Draco dormiens") }
    let motto2 = Text("nunquam titillandus")

    var body: some View {
        VStack {
            motto1
                .foregroundColor(.red)
            motto2
                .foregroundColor(.blue)
        }
        
    }
}

struct ConditionalView_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalView()
    }
}
