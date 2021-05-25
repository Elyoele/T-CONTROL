//
//  SwiftUIView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 22/05/21.
//

import SwiftUI

struct Foryou: View {
    
    var diaryEntries : [DiaryEntry] = [
        DiaryEntry(image: "img1", date: "FRI, 14 MAY", heading: "Finally I'm confortable with my body"),
        DiaryEntry(image: "img2", date: "FRI, 15 MAY", heading: "Finally I'm super confortable with my body"),
        DiaryEntry(image: "img3", date: "FRI, 16 MAY", heading: "Finally I'm hyper confortable with my body"),
    ]
    
    var body: some View {
        ScrollView {

                
                ForEach(diaryEntries, id: \.id) { card in
                    Timelinecard(image: card.image, date: card.date, heading: card.heading)
                    
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
