//
//  DSEasyColors.swift
//  DSEasy
//
//  Created by Erick Kaique Da Silva on 27/06/20.
//

public struct DSColors {
    func colorOrDefault(_ name: String, alpha: CGFloat = 1.0) -> UIColor {
        return DSAssets.colorFromName(name, alpha: alpha) ?? UIColor.black
    }
    
    public var blueDark: UIColor {
        return colorOrDefault("blueDark")
    }
    
    public var blueDefault: UIColor {
        return colorOrDefault("blueDefault")
    }
    
    public var blueLight: UIColor {
        return colorOrDefault("blueLight")
    }
    
    public var greenDark: UIColor {
        return colorOrDefault("greenDark")
    }
    
    public var greenDefault: UIColor {
        return colorOrDefault("greenDefault")
    }
    
    public var greenLight: UIColor {
        return colorOrDefault("greenLight")
    }
    
    public var yellowDark: UIColor {
        return colorOrDefault("yellowDark")
    }
    
    public var yellowDefault: UIColor {
        return colorOrDefault("yellowDefault")
    }
    
    public var yellowLight: UIColor {
        return colorOrDefault("yellowLight")
    }
    
    public var redDark: UIColor {
        return colorOrDefault("redDark")
    }
    
    public var redDefault: UIColor {
        return colorOrDefault("redDefault")
    }
    
    public var redLight: UIColor {
        return colorOrDefault("redLight")
    }
    
    public var dark: UIColor {
        return colorOrDefault("dark")
    }
    
    public var grayLight: UIColor  {
        return colorOrDefault("grayDark")
    }
}
