//
//  Extensions.swift
//  AppleMusic
//
//  Created by Rusell on 08.11.2020.
//
import UIKit

enum AssetsColor {
   case yellow
   case black
   case blue
   case gray
   case green
   case lightGray
   case separatorColor
   case red
}

extension UIColor {

    static func appColor(_ name: AssetsColor) -> UIColor? {
        switch name {
        case .yellow:
            return UIColor(named: "appYellow")
        case .black:
            return UIColor(named: "appBlack")
        case .blue:
            return UIColor(named: "appBlue")
        case .gray:
            return UIColor(named: "appGray")
        case .lightGray:
            return UIColor(named: "appLightGray")
        case .red:
            return UIColor(named: "appRed")
        case .separatorColor:
            return UIColor(named: "appSeparatorColor")
        case .green:
            return UIColor(named: "appGreen")
        }
    }
}
