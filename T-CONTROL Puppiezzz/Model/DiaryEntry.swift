//
//  DiaryEntry.swift
//  T-CONTROL Puppiezzz
//
//  Created by Fabio Staiano on 25/05/21.
//

import Foundation

class DiaryEntry: ObservableObject {
    
    
    @Published var cards: [EntryModel] = []

    var card1 = EntryModel(image: "img3", emoticon: "🥳😎", date: "FRI, 14 MAY", heading: "Finally I'm confortable with my body", description: "For the first time after the surgery I feel really good. I was looking forward to this feeling, I’m super excited. I can finally do things like go to the beach without shame.")
    var card2 =  EntryModel(image: "img2", emoticon: "🤩", date: "FRI, 13 MAY", heading: "I feel good after the operation", description: "Today I feel really good. The operation changed my life. I finally recognize my body.")
    var card3 = EntryModel(image: "img1", emoticon: "🙂", date: "WED, 12 MAY", heading: "I’m fine", description: "A few days after the operation I already feel better. Now I can look at myself in the mirror but I’m still not quite comfortable.")
    
    init() { self.cards = [card1, card2, card3] }
       
    
}

    
//    var id = UUID()
//    var image : String
//    var emoticon : String
//    var date : String
//    var heading : String
//    var description : String
//}
