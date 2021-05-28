//
//  Addupdate.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 24/05/21.
//

import SwiftUI

struct Addupdate: View {
    @Environment(\.presentationMode) var presentationMode

    
    @ObservedObject private var diaryEntry = DiaryEntry()
    @State var newEntry = EntryModel()

    @State private var showingAlert = false
    @State private var name = ""
    @State private var description = ""
    @State private var emoticon = ""
    @State private var wakeUp = Date()
    @State private var scEmojiItems = [
        ScEmojiEntry(name: "Self love", emoticon: "🥰", isChecked: false),
        ScEmojiEntry(name: "Frustration", emoticon: "😭", isChecked: false),
        ScEmojiEntry(name: "Sadness", emoticon: "😔", isChecked: false),
        ScEmojiEntry(name: "Excitement", emoticon: "🤩", isChecked: false),
        ScEmojiEntry(name: "Quiet", emoticon: "🙂", isChecked: false),
    ]
    
    var body: some View {
        NavigationView {
        VStack {
            Form {

                Section {
                    TextField("Add a title", text: $newEntry.heading)
                    TextField("Add a description", text: $newEntry.description)

                }
                
                ForEach(scEmojiItems, id: \.id) { item in
                    ScEmoji(name: item.name, emoticon: item.emoticon, isChecked: item.isChecked)}
                
                Section {
                    Button(action: { self.showingAlert = true}, label: {
                        Text("Add photo or video")
                        
                    })
                    .alert(isPresented: $showingAlert) {
                        Alert(title: Text("Photo added"), message: Text("You correctly added a photo to your timeline"), dismissButton: .default(Text("Continue")))
                        

                }
                }
                HStack {
                    VStack {
                        Text("Hold down to record your voice")
                            .padding(.bottom, 0.2)
                        Text("Record your voice and listen to the changes. Say Hello!")
                            .font(.subheadline)
                            .foregroundColor(Color.gray)
                        
                            
                    }
                    Spacer()
                    Chips(systemImage: "mic.fill", bgColor: .accentColor, isSelected: false)
                }
                .padding(.vertical)
            }
            
            .navigationBarItems(leading: Button(
                action: {
                    self.presentationMode.wrappedValue.dismiss()
                },
                label: { Text("Cancel")
                    .foregroundColor(Color.red)
                    
                }
            ), trailing: Button(
                action: {
                    diaryEntry.cards.append(newEntry)
                    print(diaryEntry.cards)
                    self.presentationMode.wrappedValue.dismiss()
                },
                label: { Text("Done")
                    
                }
            ))
            .navigationTitle("Add Update")
            .environmentObject(diaryEntry)

            }
        
        }
    }
}

struct Addupdate_Previews: PreviewProvider {
    static var previews: some View {
        Addupdate()
    }
}
