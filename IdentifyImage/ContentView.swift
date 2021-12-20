//
//  ContentView.swift
//  IdentifyImage
//
//  Created by ASHISH LANGHE on 12/19/21.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    let images = ["tiger", "cat", "peacock", "nature"]
    @State private var selectedImage = ""
    
    @ObservedObject private var imageDVM: ImageDetectVM
    private var imageDM: ImageDetectManager
    
    init() {
        self.imageDM = ImageDetectManager()
        self.imageDVM = ImageDetectVM(manager: self.imageDM)
    }
    
    //MARK: - BODY
    var body: some View {
        
        NavigationView {
            VStack {
                Text("SwiftUI CoreML")
                ScrollView([.horizontal]) {
                    HStack {
                        ForEach(self.images, id:\.self) { name in
                             Image(name)
                                .resizable()
                                .frame(width: 250, height: 250)
                                .padding()
                                .border(Color.red, width: (self.selectedImage == name) ? 10 : 0)
                                .onTapGesture {
                                    self.selectedImage = name
                                }
                        }
                    }
                }
                
                Button("Catch") {
                    self.imageDVM.detect(self.selectedImage)
                }
                .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(20)
                Text(self.imageDVM.getDetect)
                    .padding()
            }
        }
        .navigationTitle("SwiftUI with CoreML")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
