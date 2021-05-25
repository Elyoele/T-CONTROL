//
//  Animations1View.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 23/05/21.
//

import SwiftUI

struct Animations1View: View {

    @State private var animationAmount: CGFloat = 1

    var body: some View {
        Button("Tap Me") {
            self.animationAmount += 1
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        .animation(.interpolatingSpring(stiffness: 50, damping: 1))
    }
}

struct Animations1View_Previews: PreviewProvider {
    static var previews: some View {
        Animations1View()
    }
}
