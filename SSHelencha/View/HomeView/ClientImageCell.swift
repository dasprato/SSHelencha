//
//  ClientImageCell.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-03.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class ClientImageCell: UICollectionViewCell {
    var clientImage: ClientImage? {
        didSet {
            clientImageView.sd_setImage(with: URL(string: (clientImage?.url)!), placeholderImage: UIImage(), options: [.continueInBackground, .progressiveDownload])
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(clientImageView)
        
        NSLayoutConstraint.activate([clientImageView.topAnchor.constraint(equalTo: topAnchor), clientImageView.bottomAnchor.constraint(equalTo: bottomAnchor), clientImageView.rightAnchor.constraint(equalTo: rightAnchor), clientImageView.leftAnchor.constraint(equalTo: leftAnchor)])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private var clientImageView: UIImageView = {
        let pi = UIImageView()
        pi.translatesAutoresizingMaskIntoConstraints = false
        pi.clipsToBounds = true
        pi.contentMode = .scaleAspectFit
        return pi
    }()
}
