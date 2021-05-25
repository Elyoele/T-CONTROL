//
//  ContentView.swift
//  VARIE PROVE
//
//  Created by Giosuè Coppola on 23/05/21.
//

import SwiftUI

struct CapsuleText: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
            .clipShape(Capsule())
    }
}

struct Modifier1View: View {
    var body: some View {
        VStack(spacing: 10) {
            CapsuleText(text: "First")
                .foregroundColor(.yellow)
            CapsuleText(text: "Second")
                .foregroundColor(.white)
        }
    }
}


struct Modifier1View_Previews: PreviewProvider {
    static var previews: some View {
        Modifier1View()
    }
}
