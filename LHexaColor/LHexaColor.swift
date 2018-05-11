//
//  LHexaColor.swift
//  LHexaColor
//
//  Created by LAITH on 5/11/18.
//  Copyright © 2018 LAITH. All rights reserved.
//

import Foundation

class LHexaColor : UIColor {
    
    let darkPurple = Static.instance?.hexColor(hex: "#4A148C")
    let lightPurple = Static.instance?.hexColor(hex: "#AB47BC")
    let darkPink = Static.instance?.hexColor(hex: "#AD1457")
    let lightPink = Static.instance?.hexColor(hex: "#FF4081")
    let darkRed = Static.instance?.hexColor(hex: "#FF1744")
    let lightRed = Static.instance?.hexColor(hex: "#F44336")
    let darktBlue = Static.instance?.hexColor(hex: "#0D47A1")
    let lighttBlue = Static.instance?.hexColor(hex: "#2196F3")
    let deepPurpleDark = Static.instance?.hexColor(hex: "#311B92")
    let deepPurpleLight = Static.instance?.hexColor(hex: "#673AB7")
    let darkGreen = Static.instance?.hexColor(hex: "#004D40")
    let lightGreen = Static.instance?.hexColor(hex: "#26A69A")
    let darkCyan = Static.instance?.hexColor(hex: "#006064")
    let lightCyan = Static.instance?.hexColor(hex: "#00ACC1")
    let darkOrange = Static.instance?.hexColor(hex: "#E65100")
    let lightOrange = Static.instance?.hexColor(hex: "#FFA726")
    let darkYellow = Static.instance?.hexColor(hex: "#FDD835")
    let lightYellow = Static.instance?.hexColor(hex: "#FFEE58")
    let darkGray = Static.instance?.hexColor(hex: "#424242")
    let lightGray = Static.instance?.hexColor(hex: "#BDBDBD")
    let white = Static.instance?.hexColor(hex: "#BDBDBD")
    let black = Static.instance?.hexColor(hex: "#FFFFFF")
    
    struct Static {
        static var instance : LHexaColor?
    }
    
    func hexColor(hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
