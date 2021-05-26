//
//  Chips.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 26/05/21.
//

import SwiftUI
struct Chips: View {
    let systemImage: String
    let titleKey: LocalizedStringKey
    @State var isSelected: Bool
    var body: some View {
        HStack{
            Image.init(systemName: systemImage).font(.title3)
            Text(titleKey).font(.system(size: 14)).lineLimit(1)
        }.padding(.all, 5)
        .foregroundColor(isSelected ? .white : .accentColor)
        .background(isSelected ? Color.accentColor : Color.white)
        .cornerRadius(40)
        .overlay(
                RoundedRectangle(cornerRadius: 40)
                    .stroke(Color.accentColor, lineWidth: 1.5)
        
        ).onTapGesture {
            isSelected.toggle()
        }
    }
}
struct Chips_Previews: PreviewProvider {
    static var previews: some View {
        Chips(systemImage: "photo", titleKey: "ciao", isSelected: false)
    }
}
