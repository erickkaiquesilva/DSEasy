//
//  DSFontsStyle.swift
//  DSEasy
//
//  Created by Erick Kaique Da Silva on 27/06/20.
//

import Foundation

@available(iOS 11.0, *)
public struct DSFonts {
    static func montserrat(type: DSFontFamily.Montserrat, size: CGFloat) -> UIFont {
        if let font = UIFont(name: type.rawValue, size: size) {
            return font
        } else {
            DSAssets.loadMontserratFont()
            return UIFont(name: type.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
        }
    }
}

@available(iOS 11.0, *)
public extension DSFonts {
    
    static var fontExtraLight: UIFont {
        return montserrat(type: .extraLight, size: 18)
    }
    
    static var fontLight: UIFont {
        return montserrat(type: .light, size: 18)
    }
    
    static var fontMedium: UIFont {
        return montserrat(type: .medium, size: 18)
    }
    
    static var fontRegular: UIFont {
        return montserrat(type: .regular, size: 18)
    }
    
    static var fontSemiBold: UIFont {
        return montserrat(type: .semiBold, size: 18)
    }
    
    static var fontBold: UIFont {
        return montserrat(type: .bold, size: 18)
    }
    
    static var titleLarge: UIFont {
        return montserrat(type: .bold, size: 28)
    }
    
    static var titleMedium: UIFont {
        return montserrat(type: .medium, size: 24)
    }
    
    static var subTitleMedium: UIFont {
        return montserrat(type: .semiBold, size: 22)
    }
}
