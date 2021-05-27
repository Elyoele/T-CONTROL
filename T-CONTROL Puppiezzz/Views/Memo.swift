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
        CalendarEvent(dateString: "05/18/2021", data: "Testosterone gel", symbol: "cross.case", bgColor: .green),
        CalendarEvent(dateString: "05/20/2021", data: "Endocrinologist", symbol: "heart.text.square", bgColor: .red),
        CalendarEvent(dateString: "05/23/2021", data: "Injection", symbol: "pills", bgColor: .blue),
        CalendarEvent(dateString: "05/28/2021", data: "Psychologist", symbol: "cross.case", bgColor: .green),
        CalendarEvent(dateString: "05/27/2021", data: "Testosterone gel", symbol: "exclamationmark.circle", bgColor: .red),
        CalendarEvent(dateString: "05/31/2021", data: "Marika's birthday", symbol: "giftcard", bgColor: .purple)
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
