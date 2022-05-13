//
//  extension.swift
//  tableViewAndCollectionView
//
//  Created by KhanhVu on 5/6/22.
//

import Foundation
import UIKit
extension UILabel {
    func setLineSpacing(lineSpacing: CGFloat = 0.0, lineHeightMultiple: CGFloat = 0.0 ) {
        guard let labelText = self.text else {
            return
        }
        let paragraphStyle = NSMutableParagraphStyle()
        
        paragraphStyle.lineSpacing = lineSpacing
        paragraphStyle.lineHeightMultiple = lineHeightMultiple
        
        let attributedString: NSMutableAttributedString
        if let labelattributedText = self.attributedText {
            attributedString = NSMutableAttributedString(attributedString: labelattributedText)
        } else {
            attributedString = NSMutableAttributedString(string: labelText)
        }

        // (Swift 4.2 and above) Line spacing attribute
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attributedString.length))

        self.attributedText = attributedString
    }
    func setStyleBoldString(name: String, notificaiton: String) {
        let labelFont = UIFont(name: "AlNile-Bold", size: 14)
        let myAttribute = [NSAttributedString.Key.font: labelFont]
        let myString = NSMutableAttributedString(string: name, attributes: myAttribute as [NSAttributedString.Key : Any])
        
        let secondAttribute = NSAttributedString(string: " \(notificaiton)")
        myString.append(secondAttribute)
        self.attributedText = myString
    }
    
}
