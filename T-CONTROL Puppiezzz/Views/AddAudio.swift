
//
//  AddAudio.swift
//  T-CONTROL Puppiezzz
//
//  Created by Eleonora Coppola on 03/06/21.
//

import SwiftUI
import AVKit

struct AddAudio: View {
    var body: some View {
        
        AudioRecord()
        
    }
}

struct AddAudio_Previews: PreviewProvider {
    static var previews: some View {
        AddAudio()
            .previewLayout(.sizeThatFits)
    }
}


struct AudioRecord : View {
    
    @State var record = false
    // creating instance for recroding...
    @State var session : AVAudioSession!
    @State var recorder : AVAudioRecorder!
    @State var alert = false
    // Fetch Audios...
    @State var audios : [URL] = []
    
    var body: some View{
        
        
        VStack{
            VStack {
                HStack {
                    
                    VStack (alignment: .leading) {
                        Text("Hold down to record your voice")
                            .fontWeight(.bold)
                        Text("Record your voice and listen to the changes. Say Hello!")
                            .font(.subheadline)
                    }
                    .padding(.horizontal)
                    
                    Button(action: {
                        
                        // Now going to record audio...
                        
                        // Intialization...
                        
                        // Were going to store audio in document directory...
                        
                        do{
                            
                            if self.record{
                                
                                // Already Started Recording means stopping and saving...
                                
                                self.recorder.stop()
                                self.record.toggle()
                                // updating data for every rcd...
                                self.getAudios()
                                return
                            }
                            
                            let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
                            
                            // same file name...
                            // so were updating based on audio count...
                            let filName = url.appendingPathComponent("rec\(self.audios.count + 1).m4a")
                            
                            let settings = [
                                
                                AVFormatIDKey : Int(kAudioFormatMPEG4AAC),
                                AVSampleRateKey : 12000,
                                AVNumberOfChannelsKey : 1,
                                AVEncoderAudioQualityKey : AVAudioQuality.high.rawValue
                                
                            ]
                            
                            self.recorder = try AVAudioRecorder(url: filName, settings: settings)
                            self.recorder.record()
                            self.record.toggle()
                        }
                        catch{
                            
                            print(error.localizedDescription)
                        }
                        
                        
                    }) {
                        
                        ZStack{
                            
                            Chips(systemImage: "mic.fill", bgColor: .accentColor, isSelected: false)
                            
                            
                            if self.record{
                                
                                Chips(systemImage: "mic.fill", bgColor: .accentColor, isSelected: true)
                                
                            }
                        }
                        .padding(.all)
                    }
                    .padding(.vertical, 25)
                }
            }
            VStack{
                List(self.audios,id: \.self){i in
                    
                    // printing only file name...
                    
                    Text(i.relativeString)
                }
                
            }
        }
        .alert(isPresented: self.$alert, content: {
            
            Alert(title: Text("Error"), message: Text("Enable Acess"))
        })
        .onAppear {
            
            do{
                
                // Intializing...
                
                self.session = AVAudioSession.sharedInstance()
                try self.session.setCategory(.playAndRecord)
                
                // requesting permission
                // for this we require microphone usage description in info.plist...
                self.session.requestRecordPermission { (status) in
                    
                    if !status{
                        
                        // error msg...
                        self.alert.toggle()
                    }
                    else{
                        
                        // if permission granted means fetching all data...
                        
                        self.getAudios()
                    }
                }
                
                
            }
            catch{
                
                print(error.localizedDescription)
            }
        }
    }
    
    func getAudios(){
        
        do{
            
            let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
            
            // fetch all data from document directory...
            
            let result = try FileManager.default.contentsOfDirectory(at: url, includingPropertiesForKeys: nil, options: .producesRelativePathURLs)
            
            // updated means remove all old data..
            
            self.audios.removeAll()
            
            for i in result{
                
                self.audios.append(i)
            }
        }
        catch{
            
            print(error.localizedDescription)
        }
    }
}
