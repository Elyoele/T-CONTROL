//
//  HVscrollView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 21/05/21.
//

import SwiftUI

struct HVscrollView: View {
    
    @State var showSheetView = false
    
    var body: some View {
        NavigationView {
            ScrollView {
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
