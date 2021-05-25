//
//  FUcardView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 22/05/21.
//

import SwiftUI

struct Foryoucard2: View {
    var image = "img 5"
    var heading = "MAY, 2021"
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            
            HStack {
                Text(heading)
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
        )
        .padding([.top, .leading, .trailing])
    }
}
struct Foryoucard2_Previews: PreviewProvider {
    static var previews: some View {
        Foryoucard2()
            .previewLayout(.sizeThatFits)
    }
}
