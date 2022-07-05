//
//  ButtonUIKit.swift
//  Canvas2UIKit
//
//  Created by Rail on 28.02.2022.
//
import Foundation
import UIKit

extension UIButton {
    convenience init(title: String,
         backgroundColor: UIColor,
         titleColor: UIColor,
         isShadow: Bool,
         cornerRadius: CGFloat = 5) {
        
        self.init(type: .system)
        
        self.setTitle(title, for: .normal)
        self.backgroundColor = backgroundColor
        self.setTitleColor(titleColor, for: .normal)
        self.layer.cornerRadius = cornerRadius
        
        if isShadow {
            self.layer.shadowRadius = 5
            self.layer.shadowOpacity = 0.2
            self.layer.shadowOffset = CGSize(width: 0, height: 4)
            self.layer.shadowColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        }
        
    }
}
