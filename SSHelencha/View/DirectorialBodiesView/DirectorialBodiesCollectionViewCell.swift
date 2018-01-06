//
//  DirectorialBodiesCollectionViewCell.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-03.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class DirectorialBodiesCollectionViewCell: UICollectionViewCell {
    
    var director: Director? {
        didSet {
            directorName.text = director?.name
            directorImage.sd_setImage(with: URL(string: (director?.url)!), placeholderImage: UIImage(), options: [.continueInBackground, .progressiveDownload])
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(directorImage)
        addSubview(directorName)
        NSLayoutConstraint.activate([directorImage.leftAnchor.constraint(equalTo: leftAnchor), directorImage.topAnchor.constraint(equalTo: topAnchor), directorImage.heightAnchor.constraint(equalTo: widthAnchor), directorImage.widthAnchor.constraint(equalTo: widthAnchor)])
        NSLayoutConstraint.activate([directorName.topAnchor.constraint(equalTo: directorImage.bottomAnchor), directorName.leftAnchor.constraint(equalTo: leftAnchor), directorName.rightAnchor.constraint(equalTo: rightAnchor), directorName.bottomAnchor.constraint(equalTo: bottomAnchor)])
        directorImage.layer.cornerRadius = frame.width / 2
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    private var directorImage: UIImageView = {
        let pi = UIImageView()
        pi.translatesAutoresizingMaskIntoConstraints = false
        pi.clipsToBounds = true
        pi.contentMode = .scaleAspectFit
        pi.backgroundColor = UIColor.white
        return pi
    }()
    
    private var directorName: UILabel = {
        let pi = UILabel()
        pi.translatesAutoresizingMaskIntoConstraints = false
        pi.contentMode = .scaleAspectFit
        pi.textAlignment = .center
        pi.font = UIFont.boldSystemFont(ofSize: 16)
        pi.textColor = .darkGray
        return pi
    }()
    
}
