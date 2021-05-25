//
//  SwiftUIView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 22/05/21.
//

import SwiftUI

struct Foryou: View {
    
    var FuEntries : [FuEntry] = [
        FuEntry(image: "img4", date: "MAY, 2021"),
        FuEntry(image: "img5", date: "APRIL, 2021"),
        FuEntry(image: "img6", date: "MARCH, 2021"),
        FuEntry(image: "img7", date: "FEBRUARY, 2021"),

    ]
    
    var body: some View {
        ScrollView {
                
                ForEach(FuEntries, id: \.id) { card in
                    Foryoucard2(image: card.image, date: card.date)
                    
            }
        }
        .navigationTitle("For you")
    }
}

struct ForyouView_Previews: PreviewProvider {
    static var previews: some View {
        Foryou()
    }
}
