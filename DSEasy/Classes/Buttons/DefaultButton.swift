//
//  DefaultButton.swift
//  DSEasy
//
//  Created by Erick Kaique Da Silva on 27/06/20.
//

import UIKit

public enum DSButtonType {
    case confirm
    case warning
    case cancel
    case alternative
}

public enum DSButtonStyle {
    case small
    case medium
    
    @available(iOS 11.0, *)
    var font: UIFont {
        switch self {
        case .small: return DSFonts.montserrat(type: .medium, size: 12)
        case .medium: return DSFonts.montserrat(type: .medium, size: 14)
        }
    }
    
    var heigth: Float {
        switch self {
        case .small: return 32
        case .medium: return 48
        }
    }
}

@available(iOS 11.0, *)
public class DefaultButton: UIButton {
    
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
        clearPreviousSetup()
        layer.cornerRadius = CGFloat(style.heigth / 2.0)
        setupTitle()
        setupBackground()
        addConstraints()
    }
    
    private func clearPreviousSetup() {
        backgroundColor = .clear
        layer.borderColor = UIColor.clear.cgColor
        layer.borderWidth = 0
    }
    
    private func setupTitle() {
        switch type {
        case .confirm, .warning, .cancel, .alternative:
            setTitleColor(UIColor.white, for: .normal)
        }
        titleLabel?.font = style.font
    }
    
    private func setupBackground() {
        switch type {
        case .confirm:
            backgroundColor = DSColors.greenLight
            layer.borderColor = DSColors.greenDark.cgColor
        case .warning:
            backgroundColor = DSColors.yellowLight
            layer.borderColor = DSColors.yellowDark.cgColor
        case .cancel:
            backgroundColor = DSColors.redDefault
            layer.borderColor = DSColors.redDark.cgColor
        case .alternative:
            backgroundColor = DSColors.blueDefault
            layer.borderColor = DSColors.blueDark.cgColor
        }
        layer.borderWidth = 2
    }
    
    private func setupDisableBackground() { }
    
    private func addConstraints() {
        layout.applyConstraint {
            $0.height(style.heigth)
        }
    }
    
}
