//
//  PDFPreviewViewController.swift
//  PDFCreator
//
//  Created by Vadim on 14.06.2023.
//

import UIKit
import PDFKit

final class PDFPreviewViewController: UIViewController {
    
    var documentData: Data?
    private let pdfView = PDFView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(pdfView)
        pdfView.frame = view.frame
        
        if let documentData {
            pdfView.document = PDFDocument(data: documentData)
            pdfView.autoScales = true
        }
    }
}
