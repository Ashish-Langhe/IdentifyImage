//
//  ImageDetectManager.swift
//  IdentifyImage
//
//  Created by user208584 on 12/19/21.
//

import Foundation
import SwiftUI
import CoreML
import UIKit

class ImageDetectManager {
    
    let model = Resnet50()
    
    func detectImage(_ img: UIImage) -> String? {
        
        guard let pixcelBuff = img.toCVPixelBuffer(),
                let prediction = try? model.prediction(image: pixcelBuff) else {
            return nil
        }
        
        return prediction.classLabel
    }
}
