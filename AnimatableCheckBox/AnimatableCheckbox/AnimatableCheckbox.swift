//
//  AnimatableCheckbox.swift
//  AnimatableCheckBox
//
//  Created by Bing Bing on 2022/10/7.
//

import UIKit

class AnimatableCheckbox: UIView, CheckBoxDisplayableView {
    
    lazy var engine = CheckboxEngine(view: self)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        engine.setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        engine.setup()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        engine.layoutSubview()
    }
    
}
