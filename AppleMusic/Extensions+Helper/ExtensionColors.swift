//
//  Extensions.swift
//  AppleMusic
//
//  Created by Rusell on 08.11.2020.
//
import UIKit

enum AssetsColor {
   case white
   case black
   case pink
}

extension UIColor {

    static func appColor(_ name: AssetsColor) -> UIColor? {
        switch name {
        case .white:
            return UIColor(named: "white")
        case .black:
            return UIColor(named: "black")
        case .pink:
            return UIColor(named: "pink")
        }
    
    }
}
