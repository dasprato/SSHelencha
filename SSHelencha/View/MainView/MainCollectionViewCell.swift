//
//  MainCollectionViewCell.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-03.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    
    var titleForCellText: Menu? {
        didSet {
            titleForCell.text = titleForCellText?.titleForCell
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(titleForCell)
        NSLayoutConstraint.activate([titleForCell.centerYAnchor.constraint(equalTo: centerYAnchor), titleForCell.centerXAnchor.constraint(equalTo: centerXAnchor)])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private var titleForCell: UILabel = {
        let tfc = UILabel()
        tfc.translatesAutoresizingMaskIntoConstraints = false
        tfc.textColor = .darkGray
        tfc.font = UIFont.boldSystemFont(ofSize: 16)
        tfc.adjustsFontSizeToFitWidth = true
        return tfc
    }()
    
}



