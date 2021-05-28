//
//  scEmojiEntry.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 27/05/21.
//

import SwiftUI

struct ScEmojiEntry: Identifiable {
    let id = UUID()
    var name: String
    var emoticon: String
    var isChecked: Bool = true
  }
