//
//  HCardView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 21/05/21.
//

import SwiftUI

struct Foryoucard1: View {
    
    var image = "img4"
    var heading = "MAY, 2021"
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(image)
                .resizable()             .frame(width: 200.0, height: 150.0)
                .aspectRatio(contentMode: .fill)
                
            
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
                .aspectRatio(contentMode: .fit)
        )
        .padding([.leading, .bottom])
    }
}

struct Foryoucard1_Previews: PreviewProvider {
    static var previews: some View {
        Foryoucard1()
            .previewLayout(.sizeThatFits)
    }
}
