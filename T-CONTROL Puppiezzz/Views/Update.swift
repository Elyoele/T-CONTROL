//
//  UpdateView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 22/05/21.
//

import SwiftUI

struct Update: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var image = "img2"
    var heading = "Finally I'm comfortable with my body"
    var description = "lorem ipsum"
    
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
                        
                        
                        Text(heading)
                            .font(.title)
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            .lineLimit(3)
                            .layoutPriority(100)
                            .padding()
                    }
                }
                
                Text("Today, for the first time since the surgery, I feel really good. I can finally go to the beach without shame. I’ll be free to remain shirtless without letting dysphoria take over.")
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                
                
                HStack{
                    
                    Button(action: {}, label: {
                        Image("audio")
                    })
                    .padding(.bottom, 10)
                    
                    Text("🤩🥰")
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
        Update()
    }
}
