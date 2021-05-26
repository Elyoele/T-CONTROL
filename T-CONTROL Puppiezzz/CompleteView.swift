//
//  Tabbed2View.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 21/05/21.
//

import SwiftUI

struct CompleteView: View {
    @State private var tabSelection = 1
    
    var body: some View {
        TabView(selection: $tabSelection) {
            HVscrollView().tabItem {
                Label("Timeline", systemImage: "photo.tv")
            }
            .onTapGesture {
                self.tabSelection = 1
            }
            .tag(1)
            Memo().tabItem {
                Label("Memo", systemImage: "calendar")
            }
            .onTapGesture {
                self.tabSelection = 2
            }
            .tag(2)
        }
    }
}

struct CompleteView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteView()
    }
}
