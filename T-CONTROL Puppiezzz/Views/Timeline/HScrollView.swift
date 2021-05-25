//
//  HScrollView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 21/05/21.
//

import SwiftUI

struct HScrollView: View {
    var body: some View {
        VStack {
            HStack {
                Text("For you")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                Spacer()
                NavigationLink(destination: Foryou().tabItem {} ) {
                    Text("See all")
                }
            }
            .padding(.horizontal)
            .padding(.top, 15)
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    Foryoucard1().tabItem {                    
                    }
                    Foryoucard1().tabItem {
                        
                    }
                    Foryoucard1().tabItem {
                        
                    }
                }
            }
        }
    }
}
struct HScrollView_Previews: PreviewProvider {
    static var previews: some View {
        HScrollView()
            .previewLayout(.sizeThatFits)
    }
}
