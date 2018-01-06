//
//  EnlargedImageCollectionViewCell.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-03.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit
import ImageScrollView

class EnlargedImageCollectionViewCell: UICollectionViewCell, UIScrollViewDelegate {
    var image: ClientImage? {
        didSet {
            vesselImage.sd_setImage(with: URL(string: (image?.url)!), placeholderImage: #imageLiteral(resourceName: "placeHolder"), options: [.continueInBackground, .progressiveDownload])
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(vesselImageScroll)
        NSLayoutConstraint.activate([vesselImageScroll.topAnchor.constraint(equalTo: topAnchor), vesselImageScroll.leftAnchor.constraint(equalTo: leftAnchor), vesselImageScroll.rightAnchor.constraint(equalTo: rightAnchor), vesselImageScroll.bottomAnchor.constraint(equalTo: bottomAnchor)])
        vesselImageScroll.addSubview(vesselImage)
        NSLayoutConstraint.activate([vesselImage.centerXAnchor.constraint(equalTo: vesselImageScroll.centerXAnchor), vesselImage.centerYAnchor.constraint(equalTo: vesselImageScroll.centerYAnchor), vesselImage.widthAnchor.constraint(equalTo: vesselImageScroll.widthAnchor), vesselImage.heightAnchor.constraint(equalTo: vesselImageScroll.heightAnchor)])
        
        
        vesselImageScroll.minimumZoomScale = 1.0
        vesselImageScroll.maximumZoomScale = 6.0
        vesselImageScroll.delegate = self
        backgroundColor = UIColor.clear
        
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return vesselImage
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private var vesselImageScroll: UIScrollView = {
        let pi = UIScrollView()
        pi.translatesAutoresizingMaskIntoConstraints = false
        pi.alwaysBounceVertical = false
        pi.alwaysBounceHorizontal = false
        pi.backgroundColor = UIColor.clear
        pi.showsVerticalScrollIndicator = false
        pi.showsHorizontalScrollIndicator = false
        return pi
    }()
    
    private var vesselImage: UIImageView = {
        let pi = UIImageView()
        pi.translatesAutoresizingMaskIntoConstraints = false
        pi.clipsToBounds = true
        pi.contentMode = .scaleAspectFit
        pi.backgroundColor = UIColor.clear
        return pi
    }()
}
