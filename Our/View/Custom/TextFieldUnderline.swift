//
//  TextFieldUnderline.swift
//  Our
//
//  Created by LeeSeongYeon on 3/27/24.
//

import UIKit

class TextFieldUnderline: UITextField {
    private let underlineLayer = CALayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        addUnderline()
    }
    
    private func addUnderline() {
        underlineLayer.backgroundColor = UIColor.systemGray.cgColor
        layer.addSublayer(underlineLayer)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        underlineLayer.frame = CGRect(x: 0, y: bounds.height + 7, width: bounds.width, height: 1)
    }
}
