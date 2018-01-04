//
//  CommercialImportCollectionViewCell.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-04.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class CommercialImportCollectionViewCell: UICollectionViewCell {
    
    var image: ClientImage? {
        didSet {
            importImage.sd_setImage(with: URL(string: (image?.url)!), placeholderImage: #imageLiteral(resourceName: "placeHolder"), options: [.continueInBackground, .progressiveDownload])
            importImage.alpha = 0.5
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        contentView.addSubview(importImage)
        
        NSLayoutConstraint.activate([importImage.topAnchor.constraint(equalTo: topAnchor), importImage.bottomAnchor.constraint(equalTo: bottomAnchor), importImage.rightAnchor.constraint(equalTo: rightAnchor), importImage.leftAnchor.constraint(equalTo: leftAnchor)])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    private var importImage: UIImageView = {
        let pi = UIImageView()
        pi.translatesAutoresizingMaskIntoConstraints = false
        pi.clipsToBounds = true
        pi.contentMode = .scaleAspectFill
        return pi
    }()
    
}
