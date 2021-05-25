//
//  CardView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 21/05/21.
//

import SwiftUI

struct Timelinecard: View {
    
    var image : String
    var emoticon : String
    var date : String
    var heading : String
    
    var body: some View {
        NavigationLink(destination: Update()) {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        HStack {
                            
                            Text(date)
                                .font(.headline)
                                .foregroundColor(.secondary)
                            
                            Spacer()
                            
                            HStack (alignment: .center) {
                                Image(systemName: "mic.fill")
                                    .foregroundColor(Color(red: 0.4549019607843137, green: 0.5725490196078431, blue: 0.8431372549019608))
                                
                                
                                
                                Text(emoticon)
                            }
                            
                        }
                        Text(heading)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .lineLimit(3)
                        
                    }
                    .layoutPriority(100)
                    
                    Spacer()
                }
                .padding()
                
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1))
            .padding([.top, .horizontal])
        }
        .buttonStyle(PlainButtonStyle())
        .navigationTitle("Timeline")
    }
}

struct Timelinecard_Previews: PreviewProvider {
    static var previews: some View {
        Timelinecard(image: "img1", emoticon: "🔥", date: "FRI, 14 MAY", heading: "Finally I'm comfortable with my body")
            .previewLayout(.sizeThatFits)
    }
}
