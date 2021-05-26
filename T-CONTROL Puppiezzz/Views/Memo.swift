//
//  MCalendarView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 21/05/21.
//

import SwiftUI

struct Memo: View {
    @State var showSheetView = false
    
    var events = [
        CalendarEvent(dateString: "03/21/2020", data: "Event 1"),
        CalendarEvent(dateString: "03/23/2020", data: "Event 2"),
        CalendarEvent(dateString: "03/26/2020", data: "Event 3"),
        CalendarEvent(dateString: "03/26/2020", data: "Event 4"),
    ]
    
    var body: some View {
        
        NavigationView {
            CalendarList(events: self.events) { event in
                Text("\(event.data)")
            }
            .navigationTitle(Text("Memo"))
            .navigationBarItems(
                trailing:
                    Button(action: {self.showSheetView.toggle()})
                        {Image(systemName: "plus")}
                    .sheet(isPresented:$showSheetView) { Addmemo()
                    }
            )
        }
    }
}

struct Memo_Previews: PreviewProvider {
    static var previews: some View {
        Memo()
    }
}
