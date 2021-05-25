//
//  HVscrollView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 21/05/21.
//

import SwiftUI

struct HVscrollView: View {
    
    @State var showSheetView = false
    
    @State var searchText: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                SearchBar(text: $searchText).tabItem {  }
                
                VStack {
                    HScrollView().tabItem {
                        
                    }
                    ScrollerView().tabItem {
                        
                    }
                }
            }
            .navigationTitle(Text("Timeline"))
            .navigationBarItems(
                trailing:
                    Button(action: { self.showSheetView.toggle()})
                        {Image(systemName: "plus")}
                    .sheet(isPresented:$showSheetView) {Addupdate()}
            )
        }
    }
}

struct HVscrollView_Previews: PreviewProvider {
    static var previews: some View {
        HVscrollView()
    }
}
