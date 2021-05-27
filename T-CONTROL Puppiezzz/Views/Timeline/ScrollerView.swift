//
//  ScrollView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 21/05/21.
//

import SwiftUI

struct ScrollerView: View {
    
    @ObservedObject private var diaryEntry = DiaryEntry()

    var body: some View {
        ScrollView {
            VStack {
                
                Divider()
                    .padding(.leading)
                
                ForEach(diaryEntry.cards, id: \.id) { card in
                    Timelinecard(image: card.image, emoticon: card.emoticon, date: card.date, heading: card.heading, description: card.description)
                            }
                .environmentObject(self.diaryEntry)
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
