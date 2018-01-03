//
//  HomeCollectionViewImageCell.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-03.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class ImageCell: UICollectionViewCell {
    
    var homeImage: HomeImage? {
        didSet {
            vesselImage.sd_setImage(with: URL(string: (homeImage?.urlOfImage!)!), placeholderImage: #imageLiteral(resourceName: "placeHolder"), options: [.continueInBackground, .progressiveDownload])
            vesselImageTitle.text = homeImage?.titleOfImage
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(vesselImage)
        NSLayoutConstraint.activate([vesselImage.topAnchor.constraint(equalTo: topAnchor), vesselImage.rightAnchor.constraint(equalTo: rightAnchor), vesselImage.leftAnchor.constraint(equalTo: leftAnchor), vesselImage.bottomAnchor.constraint(equalTo: bottomAnchor)])
        
        addSubview(vesselImageTitle)
        NSLayoutConstraint.activate([vesselImageTitle.leftAnchor.constraint(equalTo: leftAnchor, constant: 8), vesselImageTitle.rightAnchor.constraint(equalTo: rightAnchor), vesselImageTitle.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private var vesselImage: UIImageView = {
        let pi = UIImageView()
        pi.translatesAutoresizingMaskIntoConstraints = false
        pi.clipsToBounds = true
        pi.contentMode = .scaleAspectFill
        return pi
    }()
    private var vesselImageTitle: UILabel = {
        let pi = UILabel()
        pi.translatesAutoresizingMaskIntoConstraints = false
        pi.contentMode = .scaleAspectFit
        pi.text = "Sample Title For Now"
        pi.textAlignment = .left
        pi.font = UIFont.boldSystemFont(ofSize: pi.font.pointSize)
        pi.textColor = UIColor.white
        return pi
    }()
    
    
    

    
    
    
}

