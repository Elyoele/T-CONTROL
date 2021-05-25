//
//  SwiftUIView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 22/05/21.
//

import SwiftUI

struct Foryou: View {
    var body: some View {
        ScrollView {
            VStack {
                Foryoucard2().tabItem {
                }
                Foryoucard2().tabItem {
                }
                Foryoucard2().tabItem {
                }
                Foryoucard2().tabItem {
                }
            }
        }
        .navigationTitle("For you")
    }
}

struct ForyouView_Previews: PreviewProvider {
    static var previews: some View {
        Foryou()
    }
}
