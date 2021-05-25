//
//  Updatescroll.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 24/05/21.
//

import SwiftUI

struct UpdateScroll: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 10) {
                
                Image("img1")
                    .resizable()
                    .frame(width: 150.0, height: 240.0)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(14.0)
                
                Image("img2")
                    .resizable()
                    .frame(width: 150.0, height: 240.0)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(14.0)
                
                Image("img3")
                    .resizable()
                    .frame(width: 150.0, height: 240.0)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(14.0)

                
            }
            .padding(.all)
        }
    }
}

struct UpdateScroll_Previews: PreviewProvider {
    static var previews: some View {
        UpdateScroll()
            .previewLayout(.sizeThatFits)
    }
}
