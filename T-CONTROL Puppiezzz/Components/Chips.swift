//
//  Chips.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 26/05/21.
//

import SwiftUI

struct Chips: View {
    let systemImage: String
    var bgColor: Color
    @State var isSelected: Bool
    var body: some View {

            Image.init(systemName: systemImage).font(.title3)
                .frame(width: 35, height: 35)
                                .foregroundColor(Color.white)
                                .background(bgColor)
                                .clipShape(Circle())
    }
}
struct Chips_Previews: PreviewProvider {
    static var previews: some View {
        Chips(systemImage: "pills", bgColor: .red, isSelected: false)
    }
}
