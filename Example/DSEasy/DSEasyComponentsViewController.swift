//
//  ViewController.swift
//  DSEasy
//
//  Created by erickkaiquesilva on 06/26/2020.
//  Copyright (c) 2020 erickkaiquesilva. All rights reserved.
//

import DSEasy

class DSEasyComponentsViewController: UIViewController {
    
    let confirmButton = ButtonOutline(title: "Confirme".uppercased(), type: .confirm, style: .medium)
    let warningButton = DefaultButton(title: "Alerta".uppercased(), type: .warning, style: .medium)
    let cancelButton = DefaultButton(title: "Cancelar".uppercased(), type: .cancel, style: .medium)
    let alternative = DefaultButton(title: "Botão Alternativo".uppercased(), type: .alternative, style: .medium)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.white
        setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setup() {
        buildHierarchy()
        addConstraint()
    }
    
    func buildHierarchy() {
        view.addSubview(confirmButton)
        view.addSubview(warningButton)
        view.addSubview(cancelButton)
        view.addSubview(alternative)
    }

    func addConstraint() {
        confirmButton.layout.applyConstraint {
            $0.topSafeArea(aligneWith: self.view, offset: 16)
            $0.left(alignedWith: self.view, offSet: 32)
            $0.right(alignedWith: self.view, offSet: 32)
        }
        warningButton.layout.applyConstraint {
            $0.under(view: confirmButton, offSet: 16)
            $0.left(alignedWith: self.view, offSet: 32)
            $0.right(alignedWith: self.view, offSet: 32)
        }
        cancelButton.layout.applyConstraint {
            $0.under(view: warningButton, offSet: 16)
            $0.left(alignedWith: self.view, offSet: 32)
            $0.right(alignedWith: self.view, offSet: 32)
        }
        alternative.layout.applyConstraint {
            $0.under(view: cancelButton, offSet: 16)
            $0.left(alignedWith: self.view, offSet: 32)
            $0.right(alignedWith: self.view, offSet: 32)
        }
    }
    
}

