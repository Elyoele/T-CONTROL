//
//  LoopView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 22/05/21.
//

import SwiftUI

struct LoopView: View {
    let puppiezzz = ["Eleonora", "Maura", "Marianna", "Sarah"]
    @State private var selectedPuppie = 0

    var body: some View {
        VStack {
            Picker("Who are you?", selection: $selectedPuppie) {
                ForEach(0 ..< puppiezzz.count) {
                    Text(self.puppiezzz[$0])
                }
            }
            Text("You chose: Puppie # \(puppiezzz[selectedPuppie])")
        }
    }
}
struct LoopView_Previews: PreviewProvider {
    static var previews: some View {
        LoopView()
    }
}
