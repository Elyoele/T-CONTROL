//
//  Modifier2View.swift
//  VARIE PROVE
//
//  Created by Giosuè Coppola on 23/05/21.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

extension View {
    func titleStyle() -> some View {
        self.modifier(Title())
    }
}

struct Modifier2View: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .titleStyle()
    }
}

struct Modifier2View_Previews: PreviewProvider {
    static var previews: some View {
        Modifier2View()
    }
}
