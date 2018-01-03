//
//  HomeCollectionViewOurClientCell.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-03.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class HomeCollectionViewOurClientCell: UICollectionViewCell {
    
    let clientImageCellId = "clientImageCellId"
    var arrayOfClientImages = [ClientImage]()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        translatesAutoresizingMaskIntoConstraints = false
        
        
        arrayOfClientImages.append(ClientImage(url: "http://sshelenchaltd.com/images/stories/logo/Summit-Power-Limited-2.jpg"))
        arrayOfClientImages.append(ClientImage(url: "http://sshelenchaltd.com/images/stories/logo/S.-Alam-Logo.jpg"))
        arrayOfClientImages.append(ClientImage(url: "http://sshelenchaltd.com/images/stories/logo/diamond-cement.png"))
        arrayOfClientImages.append(ClientImage(url: "http://sshelenchaltd.com/images/stories/logo/BM-Energy_Logo_c-name_100h.jpg"))
        arrayOfClientImages.append(ClientImage(url: "http://sshelenchaltd.com/images/stories/logo/download.png"))
        arrayOfClientImages.append(ClientImage(url: "http://sshelenchaltd.com/images/stories/logo/gulf%20logo.jpg"))

        layer.cornerRadius = 5.0
        translatesAutoresizingMaskIntoConstraints = false
        clipsToBounds = true
        backgroundColor = UIColor.white
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.layer.cornerRadius).cgPath
        layer.masksToBounds = false
        setupClientImagesCollectionView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    var clientImagesCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        let rcv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        rcv.contentInset = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
        rcv.backgroundColor = UIColor.white
        rcv.translatesAutoresizingMaskIntoConstraints = false
        rcv.clipsToBounds = true
        rcv.keyboardDismissMode = .interactive
        rcv.tag = 1
        rcv.showsHorizontalScrollIndicator = false
        return rcv
    }()
    
    func setupClientImagesCollectionView() {
        
        clientImagesCollectionView.delegate = self
        clientImagesCollectionView.dataSource = self
        clientImagesCollectionView.register(ClientImageCell.self, forCellWithReuseIdentifier: clientImageCellId)
        
        contentView.addSubview(clientImagesCollectionView)
        NSLayoutConstraint.activate([clientImagesCollectionView.rightAnchor.constraint(equalTo: rightAnchor), clientImagesCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor), clientImagesCollectionView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.size.width), clientImagesCollectionView.heightAnchor.constraint(equalTo: heightAnchor)])
        
    }
    
    
    
}

extension HomeCollectionViewOurClientCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfClientImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: clientImageCellId, for: indexPath) as! ClientImageCell
        cell.clientImage = arrayOfClientImages[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 3, height: collectionView.frame.height)
    }
    
    
}

