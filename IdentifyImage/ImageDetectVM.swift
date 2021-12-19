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
    @Published var getDetect: String
    
    init(manager:ImageDetectManager) {
        self.manager = manager
    }
}
