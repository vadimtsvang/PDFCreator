//
//  PDFAddText.swift
//  PDFCreator
//
//  Created by Vadim on 19.06.2023.
//

import Foundation
import UIKit
import PDFKit

extension PDFCreator {
    
    func addText(originPoint: CGPoint, text: String, type: UIFont.Weight, size: CGFloat, color: UIColor) -> CGRect {
        
        let textFont = UIFont.systemFont(ofSize: size, weight: type)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.lineBreakMode = .byWordWrapping
        
        let textAttributes: [NSAttributedString.Key : Any] = [.paragraphStyle: paragraphStyle, .font: textFont, .foregroundColor: color]
        let attributedText = NSAttributedString(string: text, attributes: textAttributes)
        
        let textSize = attributedText.boundingRect(with: CGSizeMake(currentPageRect.width - originPoint.x - 10, .zero), options: [.usesLineFragmentOrigin], context: nil)
        
        let textRect = CGRect(x: originPoint.x, y: originPoint.y, width: textSize.width, height: textSize.height)
        attributedText.draw(in: textRect)
        
        return textRect
    }
}
