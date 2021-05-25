//
//  ModifierView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 22/05/21.
//

import SwiftUI

struct ModifierView: View {
    @State private var useRedText = false

    var body: some View {
        Button("Voglio esssere verde, toccami.") {
            self.useRedText.toggle()
        }
        .foregroundColor(useRedText ? .red : .blue)
    }
}

struct ModifierView_Previews: PreviewProvider {
    static var previews: some View {
        ModifierView()
    }
}
