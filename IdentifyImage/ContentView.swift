//
//  ContentView.swift
//  IdentifyImage
//
//  Created by ASHISH LANGHE on 12/19/21.
//

import SwiftUI

struct ContentView: View {
    
    let images = ["tiger", "cat", "peacock", "nature"]
    
    var body: some View {
        
        NavigationView {
            VStack {
                ScrollView([.horizontal]) {
                    HStack {
                        ForEach(self.images, id:\.self) { name in
                             Image(name)
                                .resizable()
                                .frame(width: 250, height: 250)
                                .padding()
                        }
                    }
                }
                
                Button("Catch") {
                    
                }
                .padding()
                    .cornerRadius(8)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
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
