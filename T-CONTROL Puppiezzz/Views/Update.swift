//
//  UpdateView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 22/05/21.
//

import SwiftUI

struct Update: View {
    var body: some View {
        ScrollView{
            VStack{
                
                VStack {
                    Updatecard()
                }
                
                Text("Today, for the first time since the surgery, I feel really good. I can finally go to the beach without shame. I’ll be free to remain shirtless without letting dysphoria take over.")
                
           
                HStack{
                    
                    Button(action: {}, label: {
                        Image("audio")
                    })
                    
                    Text("🤩🥰")
                }
                
                
                Button1()
                
                Divider()
                
                VStack{
                    HStack{
                        UpdateScroll()
                    }
                }
            }
        }
        .navigationTitle(Text("May, 14"))
    }
    
}

struct Update_Previews: PreviewProvider {
    static var previews: some View {
        Update()
    }
}
