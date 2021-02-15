//
//  File.swift
//  
//
//  Created by SUU NGUYEN on 08/02/2021.
//

import SwiftUI

@available(iOS 13.0, *)
extension Color{
    public static func colorFromHex(_ hex: Int) -> Color{
        return self.colorFromHex(hex, 1.0)
    }
    
    public static func colorFromHex(_ hex: Int, _ alpha: Double) -> Color{
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
