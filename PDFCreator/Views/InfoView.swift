//
//  InfoView.swift
//  PDFCreator
//
//  Created by Vadim on 01.06.2023.
//

import UIKit

final class InfoView: UIView {
    
    private let titleLabel = UILabel(text: "")
    private let infoTextField = InfoTextField()
    private let lineView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureTitleLabel()
        configureInfoTextField()
        configureLineView()
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(_ title: String) {
        self.init()
        titleLabel.text = title
    }
    
    private func configureTitleLabel() {
        addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            titleLabel.heightAnchor.constraint(equalToConstant: 14)
        ])
    }
    
    private func configureInfoTextField() {
        addSubview(infoTextField)
        NSLayoutConstraint.activate([
            infoTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 0),
            infoTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            infoTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            infoTextField.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
        ])
    }
    
    private func configureLineView() {
        lineView.translatesAutoresizingMaskIntoConstraints = false
        lineView.backgroundColor = .lightGray
        lineView.alpha = 0.2
        addSubview(lineView)
        NSLayoutConstraint.activate([
            lineView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            lineView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            lineView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            lineView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
}
