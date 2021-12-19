//
//  UIImage+Extension.swift
//  IdentifyImage
//
//  Created by ASHISH LANGHE on 12/20/21.
//
import Foundation
import UIKit
import VideoToolbox

extension UIImage {
    
    func resizeImage(targerS: CGSize) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: targerS.width, height: targerS.height)
        
        UIGraphicsBeginImageContextWithOptions(targerS, false, 0)
        self.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }
}

    
