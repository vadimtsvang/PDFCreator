//
//  PDFAddLine.swift
//  PDFCreator
//
//  Created by Vadim on 19.06.2023.
//

import Foundation
import PDFKit

extension PDFCreator {
    
    func addLine(originPoint: CGPoint, drawContext: CGContext) {
        
        drawContext.saveGState()
        drawContext.setStrokeColor(UIColor.lightGray.cgColor)
        drawContext.setAlpha(0.5)
        
        drawContext.move(to: originPoint)
        drawContext.addLine(to: CGPoint(x: currentPageRect.width - originPoint.x * 2, y: originPoint.y))
        drawContext.strokePath()
        drawContext.restoreGState()
    }
}
