//
//  DSEasyColors.swift
//  DSEasy
//
//  Created by Erick Kaique Da Silva on 27/06/20.
//

public class DSColors {
    static func colorOrDefault(_ name: String, alpha: CGFloat = 1.0) -> UIColor {
        return DSAssets.colorFromName(name, alpha: alpha) ?? UIColor.black
    }
    
    public static var blueDark: UIColor {
        return colorOrDefault("blueDark")
    }
    
    public static var blueDefault: UIColor {
        return colorOrDefault("blueDefault")
    }
    
    public static var blueLight: UIColor {
        return colorOrDefault("blueLight")
    }
    
    public static var greenDark: UIColor {
        return colorOrDefault("greenDark")
    }
    
    public static var greenDefault: UIColor {
        return colorOrDefault("greenDefault")
    }
    
    public static var greenLight: UIColor {
        return colorOrDefault("greenLight")
    }
    
    public static var yellowDark: UIColor {
        return colorOrDefault("yellowDark")
    }
    
    public static var yellowDefault: UIColor {
        return colorOrDefault("yellowDefault")
    }
    
    public static var yellowLight: UIColor {
        return colorOrDefault("yellowLight")
    }
    
    public static var redDark: UIColor {
        return colorOrDefault("redDark")
    }
    
    public static var redDefault: UIColor {
        return colorOrDefault("redDefault")
    }
    
    public static var redLight: UIColor {
        return colorOrDefault("redLight")
    }
    
    public static var dark: UIColor {
        return colorOrDefault("dark")
    }
    
    public static var grayLight: UIColor {
        return colorOrDefault("grayDark")
    }
    
    public static var whiteLight: UIColor {
        return colorOrDefault("whiteLight")
    }
}
