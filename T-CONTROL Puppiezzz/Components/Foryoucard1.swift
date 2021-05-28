//
//  HCardView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 21/05/21.
//

import SwiftUI

struct Foryoucard1: View {
    
    var image = "img4"
    var date = "MAY, 2021"
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 200, idealWidth: 200, maxWidth: 200, minHeight: 150, idealHeight: 150, maxHeight: 150, alignment: .center)
                .clipped()
            
            HStack {
                Text(date)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .lineLimit(3)
                    .layoutPriority(100)
            }
            .padding()
        }
        .cornerRadius(14)
        .overlay(
            RoundedRectangle(cornerRadius: 14)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
                .aspectRatio(contentMode: .fit)
        )
        .padding([.leading, .bottom])
    }
}

struct Foryoucard1_Previews: PreviewProvider {
    static var previews: some View {
        Foryoucard1(image: "img6", date: "MARCH, 2021")
            .previewLayout(.sizeThatFits)
    }
}
