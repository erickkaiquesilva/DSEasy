//
//  Strings.swift
//  DSEasy
//
//  Created by Erick Kaique Da Silva on 27/06/20.
//

import Foundation

public class DSLocalizedStrings {
    private static let tableName = "Localizable"
    
    public let confirm = localized(forKey: "confirm")
    public let warning = localized(forKey: "warning")
    public let cancel = localized(forKey: "cancel")
    public let done = localized(forKey: "done")
    
    public let titleLarge = localized(forKey: "titleLarge")
    public let titleMedium = localized(forKey: "titleMedium")
    public let subTitleMedium = localized(forKey: "subTitleMedium")
    public let subTitleSmall = localized(forKey: "subTitleSmall")
}

private extension DSLocalizedStrings {
    static func localized(forKey key: String) -> String {
        let bundle = Bundle(for: DSLocalizedStrings.self)
        return NSLocalizedString(key, tableName: tableName, bundle: bundle, value: "", comment: "")
    }
}
