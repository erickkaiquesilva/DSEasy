//
//  ButtonOutline.swift
//  DSEasy
//
//  Created by Erick Kaique Da Silva on 29/06/20.
//

public class ButtonOutline: UIButton {
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
                edgeInsets: UIEdgeInsets = UIEdgeInsets(top: 0, left: 0,
                                                        bottom: 0, right: 0)) {
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
    
    func setup() {
        layer.cornerRadius = CGFloat(style.heigth / 2.0)
        setupTitle()
        addConstraint()
    }
    
    private func clearPreviousSetup() {
        backgroundColor = .clear
        layer.borderColor = UIColor.clear.cgColor
        layer.borderWidth = 0
    }
    
    private func setupTitle() {
        backgroundColor = .clear
        switch type {
        case .confirm:
            layer.borderColor = DSColors.greenLight.cgColor
            setTitleColor(DSColors.greenLight, for: .normal)
        case .warning:
            layer.borderColor = DSColors.yellowDefault.cgColor
            setTitleColor(DSColors.yellowDefault, for: .normal)
        case .cancel:
            layer.borderColor = DSColors.redDefault.cgColor
            setTitleColor(DSColors.redDefault, for: .normal)
        case .alternative:
            layer.borderColor = DSColors.blueDefault.cgColor
            setTitleColor(DSColors.blueDefault, for: .normal)
        }
        layer.borderWidth = 2
    }
    
    private func addConstraint() {
        layout.applyConstraint {
            $0.height(style.heigth)
        }
    }
}
