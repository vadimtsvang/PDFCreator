//
//  ViewController.swift
//  PDFCreator
//
//  Created by Vadim on 01.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var mainView: MainView? {
        view as? MainView
    }
    
    override func loadView() {
        self.view = MainView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "iOS Junior CV"
    }
    
    @objc func shareButtonTapped() {
     print("111")
    }

    @objc func previewButtonTapped() {
     print("121")
    }
}

