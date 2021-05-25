//
//  CardUPDATE.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 24/05/21.
//

import SwiftUI

struct Updatecard: View {
        var image = "img 2"
        var heading = "Finally I'm comfortable with my body"
    var description = "lorem ipsum"
    
        var body: some View {
            VStack {
                
            ZStack(alignment: .bottomLeading) {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    
                
                    Text(heading)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .lineLimit(3)
                        .layoutPriority(100)
                        .padding()
            }
                    .aspectRatio(contentMode: .fit)
                
                Text (description)
            }
        }
    }

struct Updatecard_Previews: PreviewProvider {
    static var previews: some View {
        Updatecard()
            .previewLayout(.sizeThatFits)
    }
}
