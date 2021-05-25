//
//  MCalendarView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 21/05/21.
//

import SwiftUI
import CalendarList

struct Calendar1: View {
    
    @State var showSheetView2 = false
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
                .navigationTitle(Text("Calendar"))
                .navigationBarItems(
                    trailing:
                        Button(action: {self.showSheetView2.toggle()})
                            {Image(systemName: "plus")}
                        .sheet(isPresented:$showSheetView2) { Addmemo()}
                )
        }
    }
}

struct Calendar1_Previews: PreviewProvider {
    static var previews: some View {
        Calendar1()
    }
}
