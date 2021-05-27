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
                            HStack {
                                    Spacer()
                                    Button(
                                        action: {
                                            self.presentationMode.wrappedValue.dismiss()
                                        },
                                        label: { Image(systemName: "xmark.circle.fill")
                                            .resizable()
                                            .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.993, opacity: 0.70))
                                            .frame(minWidth: 40, idealWidth: 40, maxWidth: 40, minHeight: 40, idealHeight: 40, maxHeight: 40, alignment: .center)
                                            
                                        }
                                    )
                                    .foregroundColor(.white)
                                    .padding(.horizontal)
                                    .padding(.top, 50)

                            }
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
            Spacer()
                .frame(height: 80.0)
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
