//
//  ImageDetectVM.swift
//  IdentifyImage
//
//  Created by ASHISH LANGHE on 12/19/21.
//

import Foundation
import SwiftUI
import Combine

class ImageDetectVM: ObservableObject {
    
    var name: String = ""
    var manager: ImageDetectManager
    @Published var getDetect: String = ""
    
    init(manager:ImageDetectManager) {
        self.manager = manager
    }
    
    func detect(_ name: String) {
        let sourceImage = UIImage(named: name)
        guard let resizedImage = sourceImage?.resizeImage(targerS: CGSize(width: 224, height: 224)) else {
            fatalError("Not resized!!")
        }
        
        if let label = self.manager.detectImage(resizedImage) {
            self.getDetect = label
        }
    }
}
