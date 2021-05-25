//
//  ContentView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 21/05/21.
//

import SwiftUI

struct TabbedView: View {
    var body: some View {
        TabView(selection: .constant(1)) {
            ScrollerView().tabItem {
                Label("Timeline", systemImage: "person.3.fill")
            }.tag(1)
            PuppyListView().tabItem {
                Label("PuppyPiratezzz", systemImage: "person.3.fill")
            }.tag(2)
            PresentationEleView().tabItem {
                Label("Me", systemImage: "person.3.fill")
            }.tag(3)
        }
        .accentColor(Color(red: 0.4549019607843137, green: 0.5725490196078431, blue: 0.8431372549019608))
    }
}

struct TabbedView_Previews: PreviewProvider {
    static var previews: some View {
        TabbedView()
    }
}
