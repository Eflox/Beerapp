//
//  ProfileInfoHeaderCollectionReusableView.swift
//  beerapp
//
//  Created by Charles d'Ansembourg on 27/09/2021.
//

import UIKit

class ProfileInfoHeaderCollectionReusableView: UICollectionReusableView {
    
    static let identifier = "ProfileInfoHeaderCollectionReusableView"
    
    private let profilePhotoImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    private let postsButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    private let followingButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    private let followersButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    private let editProfileButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let bioLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview()
        
        backgroundColor = .systemBlue
        clipsToBounds = true
    }
    
    private func addSubview() {
        addSubview(profilePhotoImageView)
        addSubview(followersButton)
        addSubview(followingButton)
        addSubview(postsButton)
        addSubview(bioLabel)
        addSubview(nameLabel)
        addSubview(editProfileButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let profilePhotoSize = width/4
        
        profilePhotoImageView.frame = CGRect(
            x: 5,
            y: 5,
            width: profilePhotoSize,
            height: profilePhotoSize
        ).integral
        
        let buttonHeight = profilePhotoSize / 2
        let countButtonWidth = width - 10 - profilePhotoSize
        
        postsButton.frame = CGRect(
            x: 5,
            y: 5,
            width: profilePhotoSize,
            height: profilePhotoSize
        ).integral
        
        postsButton.frame = CGRect(
            x: 5,
            y: 5,
            width: profilePhotoSize,
            height: profilePhotoSize
        ).integral
    }
}
