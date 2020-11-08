//
//  ExtensionImages.swift
//  AppleMusic
//
//  Created by Rusell on 08.11.2020.
//

import UIKit

extension UIImage {
    
    enum AssetImage: String {
        
        //TabBar
        case library
        case search
        
    }
    
    static func appImage(_ name: AssetImage) -> UIImage {
        
        guard let image = UIImage(named: name.rawValue) else {
            print("Error: image \(name.rawValue) not found")
            return UIImage()
        }
        
        return image
    }
}
