//
//  OurResourcesDataCell.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-06.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class OurResourcesDataCell: UICollectionViewCell {
    var resource: Resource? {
        didSet {
            titleOfResource.text = resource?.titleOfResource
            detailsOfResouce.text = resource?.detailsOfResouce
            resourceImage.sd_setImage(with: URL(string: (resource?.urlOfResourceImage)!), placeholderImage: UIImage(), options: [.continueInBackground, .progressiveDownload])
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(resourceImage)
        NSLayoutConstraint.activate([resourceImage.topAnchor.constraint(equalTo: topAnchor), resourceImage.leftAnchor.constraint(equalTo: leftAnchor), resourceImage.rightAnchor.constraint(equalTo: rightAnchor), resourceImage.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 2/3)])
        contentView.addSubview(titleOfResource)
        contentView.addSubview(detailsOfResouce)
        NSLayoutConstraint.activate([titleOfResource.topAnchor.constraint(equalTo: resourceImage.bottomAnchor), titleOfResource.leftAnchor.constraint(equalTo: leftAnchor, constant: 8), titleOfResource.heightAnchor.constraint(equalToConstant: 25)])
        NSLayoutConstraint.activate([detailsOfResouce.topAnchor.constraint(equalTo: titleOfResource.bottomAnchor), detailsOfResouce.leftAnchor.constraint(equalTo: leftAnchor, constant: 8), detailsOfResouce.rightAnchor.constraint(equalTo: rightAnchor, constant: -8)])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var titleOfResource: FlexibleTextView = {
        let tft = FlexibleTextView()
        tft.translatesAutoresizingMaskIntoConstraints = false
        tft.font = UIFont.boldSystemFont(ofSize: 16)
        tft.textColor = UIColor.darkGray
        tft.backgroundColor = UIColor.clear
        tft.isEditable = false
        tft.isUserInteractionEnabled = false
        return tft
    }()
    
    var detailsOfResouce: FlexibleTextView = {
        let tft = FlexibleTextView()
        tft.translatesAutoresizingMaskIntoConstraints = false
        tft.font = UIFont.systemFont(ofSize: 14)
        tft.textColor = UIColor.darkGray
        tft.backgroundColor = UIColor.clear
        tft.isEditable = false
        tft.isUserInteractionEnabled = false
        return tft
    }()
    
    var resourceImage: UIImageView = {
        let pi = UIImageView()
        pi.translatesAutoresizingMaskIntoConstraints = false
        pi.clipsToBounds = true
        pi.contentMode = .scaleAspectFill
        return pi
    }()
}

