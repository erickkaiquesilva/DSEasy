//
//  DSAssets.swift
//  DSEasy
//
//  Created by Erick Kaique Da Silva on 27/06/20.
//
import Foundation

@available(iOS 11.0, *)
class DSAssets {
    @available(iOS 13.0, *)
    static func imageFromName(_ name: String) -> UIImage? {
        return UIImage(named: name, in: Bundle(for: self), with: nil)
    }
    
    static func colorFromName(_ name: String, alpha: CGFloat = 1.0) -> UIColor? {
        return UIColor(named: name, in: Bundle(for: self), compatibleWith: nil)?.withAlphaComponent(alpha)
    }
}
