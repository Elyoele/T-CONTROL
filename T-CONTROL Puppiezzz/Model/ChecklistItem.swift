//
//  CheckList.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 27/05/21.
//

import SwiftUI

struct ChecklistItem: Identifiable {
  let id = UUID()
  var name: String
  var symbol: String
    var color: Color
  var isChecked: Bool = true
}
