//
//  EntryModel.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 28/05/21.
//

import Foundation
import SwiftUI

struct EntryModel: Identifiable {
    
        var id = UUID()
        var image : String
        var emoticon : String
        var date : String
        var heading : String
        var description : String
    


    init(image: String , emoticon: String, date: String, heading: String, description: String) {
        self.image = image
        self.emoticon = emoticon
        self.date = date
        self.heading = heading
        self.description = description

    }
    
    init() {
        self.image = ""
        self.emoticon = ""
        self.date = ""
        self.heading = ""
        self.description = ""
    }
}
