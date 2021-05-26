//
//  UpdateView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 22/05/21.
//

import SwiftUI

struct Update: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @Binding var image: String
    @Binding var heading: String
    @Binding var description: String
    @Binding var emoticon: String
    @Binding var date: String
    
    var body: some View {
        
        ScrollView{
            VStack{
                
                VStack {
                    
                    ZStack(alignment: .bottomLeading) {
                        ZStack(alignment: .topLeading) {
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 300, idealHeight: 400, maxHeight: 400, alignment: .center)
                                .clipped()
                                .overlay(LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.01), Color.black.opacity(0.6)]),
                                                    startPoint: .top, endPoint: .bottom))
                            Button(
                                action: {
                                    self.presentationMode.wrappedValue.dismiss()
                                },
                                label: { Text("<Back") }
                            )
                            .foregroundColor(.white)
                            .padding(.horizontal)
                            .padding(.top, 40)
                        }
                        
                        
                        VStack {
                            
                            Text(date)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.caption)
                                .foregroundColor(Color.white.opacity(0.9))
                                .padding(.leading)
                                .padding(.bottom, 5)
                            
                            Text(heading)
                                .fontWeight(.black)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.title)
                                .foregroundColor(.white)
                                .lineLimit(3)
                                .layoutPriority(100)
                                .padding([.leading, .bottom])
                        }
                    }
                }
                
                Text(description)
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                
                
                HStack{
                    
                    Button(action: {}, label: {
                        Image("audio")
                    })
                    .padding(.bottom, 10)
                    
                    Text(emoticon)
                }
                
                DoubleButton()
                
                Divider()
                
                VStack{
                    HStack{
                        UpdateScroll()
                    }
                }
            }
        }
        .navigationTitle(Text("May, 14"))
        .navigationBarHidden(true)
        .edgesIgnoringSafeArea(.all)
    }
    
}

struct Update_Previews: PreviewProvider {
    static var previews: some View {
        Update(image: .constant("img1"), heading: .constant("ciao"), description: .constant("des1"), emoticon: .constant(" "), date: .constant("14"))
    }
}
