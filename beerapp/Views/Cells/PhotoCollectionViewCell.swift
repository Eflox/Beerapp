//
//  PhotoCollectionViewCell.swift
//  beerapp
//
//  Created by Charles d'Ansembourg on 27/09/2021.
//

import SDWebImage
import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    static let identifier = "PhotoCollectionViewCell"
    
    private let photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    override func layoutSubviews()
    {
        super.layoutSubviews()
        photoImageView.frame = contentView.bounds
    }
    
    override func prepareForReuse()
    {
        super.prepareForReuse()
        photoImageView.image = nil
    }
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        contentView.backgroundColor = .secondarySystemBackground
        contentView.addSubview(photoImageView)
        contentView.clipsToBounds = true
        accessibilityLabel = "User port image"
        accessibilityHint = "Double-tap to open post"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(with model: UserPost)
    {
        let url = model.thumbnailImage
        photoImageView.sd_setImage(with: url, completed: nil)
        
    }
    
    public func configure(debug imageName: String)
    {
        photoImageView.image = UIImage(named: imageName)
    }
}

