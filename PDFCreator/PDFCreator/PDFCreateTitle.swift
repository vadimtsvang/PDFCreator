//
//  PDFCreateTitle.swift
//  PDFCreator
//
//  Created by Vadim on 19.06.2023.
//

import Foundation

extension PDFCreator {
    func pdfCreateTitle(OriginPoint: CGPoint) -> CGPoint {
        
        let nameText = addText(originPoint: OriginPoint, text: name, type: .bold, size: 30, color: .black)
        let developer = addText(originPoint: CGPoint(x: nameText.minX, y: nameText.maxY), text: "Junior iOS Developer", type: .regular, size: 20, color: .darkGray)
        
        return CGPoint(x: developer.minX, y: developer.maxY)
    }
}
