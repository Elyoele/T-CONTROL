//
//  CardView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 21/05/21.
//

import SwiftUI

struct Timelinecard: View {
    
    @EnvironmentObject private var diaryEntry: DiaryEntry

    @State var image : String
    @State var emoticon : String
    @State var date : String
    @State var heading : String
    @State var description : String
    
    var body: some View {
        NavigationLink(destination: Update(image: $image, heading: $heading, description: $description, emoticon: $emoticon, date: $date)) {
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
                        .padding(.bottom, 5)
                        Text(heading)
                            .font(.title)
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
            .background(Color.white)
            .cornerRadius(10)
            .padding([.top, .horizontal])
            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.1599999964237213)), radius:28, x:0, y:8)
            
        }
        .buttonStyle(PlainButtonStyle())
        .navigationTitle("Timeline")
    }
}

//struct Timelinecard_Previews: PreviewProvider {
//    static var previews: some View {
//        Timelinecard(image: "img1", emoticon: "🔥", date: "FRI, 14 MAY", heading: "Finally I'm comfortable with my body")
//            .previewLayout(.sizeThatFits)
//    }
//}
