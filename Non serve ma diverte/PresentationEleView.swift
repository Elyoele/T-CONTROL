//
//  PresentationEleView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 21/05/21.
//

import SwiftUI

struct PresentationEleView: View {
    var body: some View {
        VStack(alignment: .center) {
            Image("Group 168")
                .resizable()
                .padding()
                .frame(width: 200.0, height: 200.0)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Text("Ciao raga!")
                .font(.largeTitle)
            Text("Mi chiamo Eleonora :)")
                .font(.headline)
            Image("rainbow-flag")
                .resizable()
                .frame(width: 50.0, height: 50.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PresentationEleView()
    }
}

