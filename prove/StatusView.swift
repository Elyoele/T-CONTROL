//
//  StatusView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 22/05/21.
//

import SwiftUI

struct StatusView: View {
    @State private var tapCount = 0

    var body: some View {
        Button("Tap Count: \(tapCount)") {
            self.tapCount += 1
        }
    }
}


struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView()
    }
}
