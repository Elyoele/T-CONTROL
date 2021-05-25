//
//  ScrollView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 21/05/21.
//

import SwiftUI

struct ScrollerView: View {
    
    var UpdateEntries : [DiaryEntry] = [
        DiaryEntry(image: "img3", emoticon: "🥳😎", date: "FRI, 14 MAY", heading: "Finally I'm confortable with my body"),
        DiaryEntry(image: "img2", emoticon: "🤩", date: "FRI, 13 MAY", heading: "I feel good after the operation."),
        DiaryEntry(image: "img1", emoticon: "🙂", date: "WED, 12 MAY", heading: "I’m fine."),
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                
                Divider()
                    .padding(.leading)
                
                ForEach(UpdateEntries, id: \.id) { card in
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
