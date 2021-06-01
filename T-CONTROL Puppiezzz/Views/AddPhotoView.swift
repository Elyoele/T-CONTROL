//
//  AddPhotoView.swift
//  T-CONTROL Puppiezzz
//
//  Created by Giosuè Coppola on 01/06/21.
//

import SwiftUI

struct AddPhotoView: View {
    
    @State private var image: Image? = Image("karthick")
    @State private var shouldPresentImagePicker = false
    @State private var shouldPresentActionScheet = false
    @State private var shouldPresentCamera = false
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 20.0)
            
            Button(action: {
                self.shouldPresentActionScheet = true
            }) {
                HStack {
                    Image(systemName: "photo")
                        .font(.system(size: 20))
                    
                    Text("Add Photo")
                        .font(.headline)
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 45, maxHeight: 45)
                .background(Color.accentColor)
                .foregroundColor(.white)
                .cornerRadius(20)
                .sheet(isPresented: $shouldPresentImagePicker) {
                    SUImagePickerView(sourceType: self.shouldPresentCamera ? .camera : .photoLibrary, image: self.$image, isPresented: self.$shouldPresentImagePicker)
                }.actionSheet(isPresented: $shouldPresentActionScheet) { () -> ActionSheet in
                    ActionSheet(title: Text("Choose mode"), message: Text("Please choose your preferred mode to set your profile image"), buttons: [ActionSheet.Button.default(Text("Camera"), action: {
                        self.shouldPresentImagePicker = true
                        self.shouldPresentCamera = true
                    }), ActionSheet.Button.default(Text("Add Photo"), action: {
                        self.shouldPresentImagePicker = true
                        self.shouldPresentCamera = false
                    }), ActionSheet.Button.cancel()])
                }
            }
            
            Spacer()
                .frame(height: 15.0)
            
            image!
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: .infinity, height: 100)
                .clipShape(Rectangle())
                .overlay(Rectangle().stroke(Color.gray, lineWidth: 0.2))
            
            Spacer()
                .frame(height: 20.0)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AddPhotoView()
    }
}
