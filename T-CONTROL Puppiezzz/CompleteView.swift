//
//  Tabbed2View.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 21/05/21.
//

import SwiftUI

struct CompleteView: View {
    var body: some View {
        TabView(selection: .constant(1)) {
            HVscrollView().tabItem {
                Label("Timeline", systemImage: "photo.tv")
            }.tag(1)
            Calendar1().tabItem {
                Label("Calendar", systemImage: "calendar")
            }.tag(2)
        }
        .accentColor(Color(red: 0.4549019607843137, green: 0.5725490196078431, blue: 0.8431372549019608))
    }
}

struct CompleteView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteView()
    }
}
