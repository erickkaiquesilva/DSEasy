//
//  DefaultButton.swift
//  DSEasy
//
//  Created by Erick Kaique Da Silva on 27/06/20.
//

import UIKit

public enum DSButtonType {
    case primary
    case secundary
    case primaryDark
    case secundaryDark
}

public enum DSButtonStyle {
    case small
    case medium
    
    var heigth: Float {
        switch self {
        case .small: return 32
        case .medium: return 48
        }
    }
}

class DefaultButton: UIButton {
    
    private let style: DSButtonStyle
    
    public var type: DSButtonType {
        didSet {
            setup()
        }
    }
    
    public init(title: String,
                type: DSButtonType,
                style: DSButtonStyle,
                frame: CGRect = .zero,
                edgeInsets: UIEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)) {
        self.type = type
        self.style = style
        super.init(frame: frame)
        setTitle(title, for: .normal)
        self.contentEdgeInsets = edgeInsets
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        layer.cornerRadius = CGFloat(style.heigth / 2.0)
    }
    
    private func setupTitle() { }
    
    private func setupBackground() { }
    
    private func setupDisableBackground() { }
    
    private func addConstraints() { }
    
}
