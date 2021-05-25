//
//  CardUPDATE.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 24/05/21.
//

import SwiftUI

struct Updatecard: View {
    var image = "img2"
    var heading = "Finally I'm comfortable with my body"
    var description = "lorem ipsum"
    
    var body: some View {
        VStack {
            
            ZStack(alignment: .bottomLeading) {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 300, idealHeight: 400, maxHeight: 400, alignment: .center)
                    .clipped()
                    .overlay(LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.01), Color.black.opacity(0.6)]),
                                startPoint: .top, endPoint: .bottom))
                
                
                Text(heading)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .lineLimit(3)
                    .layoutPriority(100)
                    .padding()
            }
        }
    }
}

struct Updatecard_Previews: PreviewProvider {
    static var previews: some View {
        Updatecard()
            .previewLayout(.sizeThatFits)
    }
}
