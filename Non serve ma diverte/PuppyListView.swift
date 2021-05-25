//
//  PuppyListView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 21/05/21.
//

import SwiftUI

struct PuppyListView: View {
    var PupyPiratezzz = ["Maura", "Eleonora", "Marianna", "Sarah"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(PupyPiratezzz, id: \.self) { name in
                    NavigationLink(
                        destination: Text("🥰"),
                        label: {
                            HStack {
                                Image(systemName: "person.fill")
                                Text(name)
                            }
                        })
                }
                NavigationLink(
                    destination: Text("Ciao questa è un'altra riga"),
                    label: {
                        Text("Altra riga")
                    })
            }
            .navigationTitle("PuppyPiratezzz")
        }
    }
}

struct PresentationeleView_Previews: PreviewProvider {
    static var previews: some View {
        PuppyListView()
    }
}
