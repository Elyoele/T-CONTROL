//
//  Button.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 25/05/21.
//

import SwiftUI

struct DoubleButton: View {
    var body: some View {
        
        HStack{
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                VStack{
                    Image(systemName: "square.and.arrow.up")
                        .foregroundColor(.white)
                    Text("Share")
                        .foregroundColor(.white)
                }
                .frame(width: 150.0, height: 50.0)
                .background(Color.accentColor)
                .cornerRadius(12.0)
            })
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                
                VStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.white)
                    Text("Star")
                        .foregroundColor(.white)
                }
                .frame(width: 150.0, height: 50.0)
                .background(Color.accentColor)
                .cornerRadius(12.0)
                
            })
        }
        }
    }
    
    struct DoubleButton_Previews: PreviewProvider {
        static var previews: some View {
            DoubleButton()
                .previewLayout(.sizeThatFits)
        }
    }
