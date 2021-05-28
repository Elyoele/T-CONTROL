//
//  SwiftUIView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 27/05/21.
//

import SwiftUI

struct ChecklistItemView: View {
    
    var name : String
    var symbol : String
    var color : Color
    @State var isChecked : Bool

  var body: some View {
    
          HStack {
            HStack {
                Image(systemName: symbol)
                    .foregroundColor(color)
                    .frame(width: 35.0)
                
                Text(name)
            }
            Spacer()
            Image(systemName: isChecked ? "checkmark" : " ")
          }
          .opacity(isChecked ? 1 : 0.5)
          .onTapGesture {
            isChecked.toggle()
          }
      }

    }
  
