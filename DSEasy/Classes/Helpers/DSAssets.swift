//
//  DSAssets.swift
//  DSEasy
//
//  Created by Erick Kaique Da Silva on 27/06/20.
//
import Foundation

var montserratFontLoaded: Bool = false

@available(iOS 11.0, *)
class DSAssets {
    @available(iOS 13.0, *)
    static func imageFromName(_ name: String) -> UIImage? {
        return UIImage(named: name, in: Bundle(for: self), with: nil)
    }
    
    static func colorFromName(_ name: String, alpha: CGFloat = 1.0) -> UIColor? {
        return UIColor(named: name, in: Bundle(for: self), compatibleWith: nil)?.withAlphaComponent(alpha)
    }
    
    static func loadMontserratFont() {
        if montserratFontLoaded { return }
        for font in DSFontFamily.Montserrat.allCases {
            guard registerFont(name: "\(font.rawValue)") else {
                print("ERROR: Falied to register font")
                return
            }
        }
        montserratFontLoaded = true
    }
    
    private static func registerFont(name: String) -> Bool {
        var error: Unmanaged<CFError>?
        let bundle = Bundle(for: self)
        
        guard let pathForResource = bundle.url(forResource: name, withExtension: "ttf"),
            CTFontManagerRegisterFontsForURL(pathForResource as CFURL, CTFontManagerScope.process, &error) else {
                print(error as Any)
                return false
        }
        return true
    }
}
