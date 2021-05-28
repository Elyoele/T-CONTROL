//
//  HScrollView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 21/05/21.
//

import SwiftUI

struct HScrollView: View {
    
    var HFuEntries : [HFuEntry] = [
        HFuEntry(image: "img4", date: "MAY, 2021"),
        HFuEntry(image: "img5", date: "APR, 2021"),
        HFuEntry(image: "img6", date: "MAR, 2021"),
        HFuEntry(image: "img7", date: "FEB, 2021"),
    ]
    
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
                HStack(spacing: 0) {
                    
                    ForEach(HFuEntries, id: \.id) { card in
                        Foryoucard1(image: card.image, date: card.date)
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
