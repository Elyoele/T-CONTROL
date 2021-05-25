//
//  ScrollView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 21/05/21.
//

import SwiftUI

struct ScrollerView: View {
    
    var diaryEntries : [DiaryEntry] = [
        DiaryEntry(image: "img1", emoticon: "🔥", date: "FRI, 14 MAY", heading: "Finally I'm confortable with my body"),
        DiaryEntry(image: "img2", emoticon: "🔥", date: "FRI, 15 MAY", heading: "Finally I'm super confortable with my body"),
        DiaryEntry(image: "img3", emoticon: "🔥", date: "FRI, 16 MAY", heading: "Finally I'm hyper confortable with my body"),
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                
                Divider()
                    .padding(.leading)
                
                ForEach(diaryEntries, id: \.id) { card in
                    Timelinecard(image: card.image, emoticon: card.emoticon, date: card.date, heading: card.heading)
                            }
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollerView()
            .previewLayout(.sizeThatFits)
    }
}
