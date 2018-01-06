//
//  OurResourcesTypeCollectionViewCell.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-06.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class OurResourcesTypeCollectionViewCell: UICollectionViewCell {
    var titleForCell: String? {
        didSet {
            titleForToggle.text = titleForCell
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(titleForToggle)
        NSLayoutConstraint.activate([titleForToggle.centerXAnchor.constraint(equalTo: centerXAnchor), titleForToggle.centerYAnchor.constraint(equalTo: centerYAnchor), titleForToggle.widthAnchor.constraint(equalTo: widthAnchor), titleForToggle.heightAnchor.constraint(equalToConstant: 32)])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var titleForToggle: UILabel = {
        let tft = UILabel()
        tft.translatesAutoresizingMaskIntoConstraints = false
        tft.font = UIFont.boldSystemFont(ofSize: 20)
        tft.textColor = UIColor(red: 30/255, green: 30/255, blue: 150/255, alpha: 1)
        tft.backgroundColor = UIColor(red: 30/255, green: 30/255, blue: 150/255, alpha: 1).withAlphaComponent(0.3)
        tft.textAlignment = .center
        return tft
    }()
}
