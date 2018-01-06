//
//  ImageGalleryCollectionViewCell.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-03.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class ImageGalleryCollectionViewCell: UICollectionViewCell {
    var image: ClientImage? {
        didSet {
            vesselImage.alpha = 0
            UIView.animate(withDuration: 0.3) {
                self.vesselImage.alpha = 1
            }
            vesselImage.sd_setImage(with: URL(string: (image?.url)!), placeholderImage: UIImage(), options: [.continueInBackground, .progressiveDownload])
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
    
        
        contentView.addSubview(vesselImage)
        NSLayoutConstraint.activate([vesselImage.topAnchor.constraint(equalTo: topAnchor), vesselImage.leftAnchor.constraint(equalTo: leftAnchor), vesselImage.rightAnchor.constraint(equalTo: rightAnchor), vesselImage.bottomAnchor.constraint(equalTo: bottomAnchor)])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private var vesselImage: UIImageView = {
        let pi = UIImageView()
        pi.translatesAutoresizingMaskIntoConstraints = false
        pi.clipsToBounds = true
        pi.contentMode = .scaleAspectFill
        pi.backgroundColor = UIColor.gray
        return pi
    }()
}


