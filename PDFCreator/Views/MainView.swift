//
//  MainView.swift
//  PDFCreator
//
//  Created by Vadim on 01.06.2023.
//

import UIKit

final class MainView: UIView {
    
    private let nameView = InfoView("Name", type: .name)
    private let emailView = InfoView("E-mail", type: .email)
    private let phoneView = InfoView("Phone", type: .phone)
    private let photoImageView = InfoImageView(frame: .zero)
    private var experienceSegmentedControl = UISegmentedControl()
    private let previewButton = UIButton(type: .system)
    private let shareButton = UIButton(type: .system)

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        configureNameView()
        configurePhotoImageView()
        configureEmailView()
        configurePhoneView()
        configureExperienceSegmentedControl()
        configureShareButton()
        configurePreviewButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(delegate: InfoProtocol?) {
        self.init()
        photoImageView.delegate = delegate
    }
    
    func setImage(_ image: UIImage) {
        photoImageView.image = image
        photoImageView.contentMode = .scaleAspectFill
    }
    
    func getImage() -> UIImage {
        guard let defaultImage = UIImage(named: "dm"),
              let image = photoImageView.image else { return UIImage()}
        
        if image == UIImage(systemName: "person.badge.plus") {
            return defaultImage
        }
        return image
    }
    
    func getInfoText(_ viewType: ViewType)-> String {
        switch viewType {
        case .name:
            return nameView.getText()
        case .email:
            return emailView.getText()
        case .phone:
            return phoneView.getText()
        }
    }
    
    func getSegmentedIndex() -> Int {
        experienceSegmentedControl.selectedSegmentIndex
    }
    
    func setIsFailed(_ viewType: ViewType, _ isFailed: Bool) {
        switch viewType {
        case .name:
            nameView.isFailed = isFailed
        case .email:
            emailView.isFailed = isFailed
        case .phone:
            phoneView.isFailed = isFailed
        }
    }
}

//MARK: - Setup UI

extension MainView {
    
    private func configureNameView() {
        addSubview(nameView)
        NSLayoutConstraint.activate([
            nameView.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            nameView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            nameView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            nameView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.12)
        ])
    }
    
    private func configurePhotoImageView() {
        addSubview(photoImageView)
        NSLayoutConstraint.activate([
            photoImageView.topAnchor.constraint(equalTo: nameView.bottomAnchor, constant: 40),
            photoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            photoImageView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.3),
            photoImageView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.35)
        ])
    }
    
    private func configureEmailView() {
        addSubview(emailView)
        NSLayoutConstraint.activate([
            emailView.topAnchor.constraint(equalTo: photoImageView.topAnchor, constant: 0),
            emailView.leadingAnchor.constraint(equalTo: photoImageView.trailingAnchor, constant: 20),
            emailView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            emailView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.12)
        ])
    }
    
    private func configurePhoneView() {
        addSubview(phoneView)
        NSLayoutConstraint.activate([
            phoneView.leadingAnchor.constraint(equalTo: photoImageView.trailingAnchor, constant: 20),
            phoneView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            phoneView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.12),
            phoneView.bottomAnchor.constraint(equalTo: photoImageView.bottomAnchor, constant: 0)
        ])
    }
    
    private func configureExperienceSegmentedControl() {
        experienceSegmentedControl = UISegmentedControl(items: ["1 year", "2 years", "3 years"])
        experienceSegmentedControl.selectedSegmentIndex = 0
        experienceSegmentedControl.backgroundColor = .orange
        experienceSegmentedControl.translatesAutoresizingMaskIntoConstraints = false
        addSubview(experienceSegmentedControl)
        NSLayoutConstraint.activate([
            experienceSegmentedControl.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            experienceSegmentedControl.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            experienceSegmentedControl.topAnchor.constraint(equalTo: photoImageView.bottomAnchor, constant: 20)
        ])
    }
    
    private func configureShareButton() {
        shareButton.backgroundColor = .white
        shareButton.setImage(UIImage(systemName: "square.and.arrow.up"), for: .normal)
        shareButton.tintColor = .orange
        shareButton.layer.borderColor = UIColor.orange.cgColor
        shareButton.layer.borderWidth = 2
        shareButton.layer.cornerRadius = 10
        shareButton.translatesAutoresizingMaskIntoConstraints = false
        shareButton.addTarget(nil, action: #selector(ViewController.shareButtonTapped), for: .touchUpInside)
        addSubview(shareButton)
        NSLayoutConstraint.activate([
            shareButton.topAnchor.constraint(equalTo: experienceSegmentedControl.bottomAnchor, constant: 40),
            shareButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            shareButton.widthAnchor.constraint(equalToConstant: 40),
            shareButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func configurePreviewButton() {
        previewButton.backgroundColor = .orange
        previewButton.setTitle("Preview", for: .normal)
        previewButton.tintColor = .white
        previewButton.layer.cornerRadius = 10
        previewButton.translatesAutoresizingMaskIntoConstraints = false
        previewButton.addTarget(nil, action: #selector(ViewController.previewButtonTapped), for: .touchUpInside)
        addSubview(previewButton)
        NSLayoutConstraint.activate([
            previewButton.topAnchor.constraint(equalTo: experienceSegmentedControl.bottomAnchor, constant: 40),
            previewButton.trailingAnchor.constraint(equalTo: shareButton.leadingAnchor, constant: -3),
            previewButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            previewButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
