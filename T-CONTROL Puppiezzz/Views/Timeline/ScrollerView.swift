//
//  ScrollView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 21/05/21.
//

import SwiftUI

struct ScrollerView: View {
    
    var UpdateEntries : [DiaryEntry] = [
        DiaryEntry(image: "img3", emoticon: "🥳😎", date: "FRI, 14 MAY", heading: "Finally I'm confortable with my body", description: "For the first time after the surgery I feel really good. I was looking forward to this feeling, I’m super excited. I can finally do things like go to the beach without shame."),
        DiaryEntry(image: "img2", emoticon: "🤩", date: "FRI, 13 MAY", heading: "I feel good after the operation", description: "Today I feel really good. The operation changed my life. I finally recognize my body."),
        DiaryEntry(image: "img1", emoticon: "🙂", date: "WED, 12 MAY", heading: "I’m fine", description: "A few days after the operation I already feel better. Now I can look at myself in the mirror but I’m still not quite comfortable."),
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                
                Divider()
                    .padding(.leading)
                
                ForEach(UpdateEntries, id: \.id) { card in
                    Timelinecard(image: card.image, emoticon: card.emoticon, date: card.date, heading: card.heading, description: card.description)
                            }
            }
        }
    }
}

struct body_Previews: PreviewProvider {
    static var previews: some View {
        ScrollerView()
            .previewLayout(.sizeThatFits)
    }
}
