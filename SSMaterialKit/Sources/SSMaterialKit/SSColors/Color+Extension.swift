//
//  File.swift
//  
//
//  Created by SUU NGUYEN on 08/02/2021.
//


#if canImport(SwiftUI)
import SwiftUI
#endif

#if canImport(UIKit)
import UIKit
#endif

@available(iOS 13.0, *)
extension Color{
    public static func colorFromHex(hex: Int) -> Color{
        return self.colorFromHex(hex: hex, alpha: 1.0)
    }
    
    public static func colorFromHex(hex: Int, alpha: Double) -> Color{
        let red = (hex >> 16) & 0xFF
        let green = (hex >> 8) & 0xFF
        let blue = hex & 0xFF
        assert(red >= 0 && red <= 255, "--- INVALID RED COMPONENT ---")
        assert(green >= 0 && green <= 255, "--- INVALID GREEN COMPONENT ---")
        assert(blue >= 0 && blue <= 255, "--- INVALID BLUE COMPONENT ---")
        return Color(red: Double(red/255), green: Double(green/255), blue: Double(blue/255), opacity: (alpha >= 0.0 && alpha <= 1.0) ? alpha : 1.0)
    }
    
    public static var red50: Color = {
        return .red
    }()
}

extension UIColor{
    public static func colorFromHex(hex: Int) -> UIColor{
        return self.colorFromHex(hex: hex, alpha: 1.0)
    }
    
    public static func colorFromHex(hex: Int, alpha: CGFloat) -> UIColor{
        let red = (hex >> 16) & 0xFF
        let green = (hex >> 8) & 0xFF
        let blue = hex & 0xFF
        assert(red >= 0 && red <= 255, "--- INVALID RED COMPONENT ---")
        assert(green >= 0 && green <= 255, "--- INVALID GREEN COMPONENT ---")
        assert(blue >= 0 && blue <= 255, "--- INVALID BLUE COMPONENT ---")
        return UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: (alpha >= 0.0 && alpha <= 1.0) ? alpha : 1.0)
    }
    
    public static var red50: UIColor = {
        return .red
    }()
}
