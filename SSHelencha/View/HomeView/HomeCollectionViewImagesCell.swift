//
//  HomeCollectionViewCell.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-03.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class HomeCollectionViewImagesCell: UICollectionViewCell {
    
    let imageCellId = "imageCellId"
    var arrayOfHomeImage = [HomeImage]()
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.red
        setupImagesCollectionView()
        
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Our Deck loader carrying Heavy Lift Cargo", urlOfImage: "http://sshelenchaltd.com/images/stories/slider/pic8.jpg"))
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Floating Crane", urlOfImage: "http://sshelenchaltd.com/images/stories/slider/pic5.jpg"))
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Our Deck loader carrying Heavy Lift Cargo", urlOfImage: "http://sshelenchaltd.com/images/stories/slider/pic4.jpg"))
        
        
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Cargo loaded on our barge", urlOfImage: "http://sshelenchaltd.com/images/stories/slider/pic6.jpg"))
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Project cargo loaded on our barge", urlOfImage: "http://sshelenchaltd.com/images/stories/slider/pic7.jpg"))
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Heavy lift packages on our barge", urlOfImage: "http://sshelenchaltd.com/images/stories/slider/pic11.jpg"))
        
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Heavy lift packages on our barge", urlOfImage: "http://sshelenchaltd.com/images/stories/slider/pic12.jpg"))
        
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Project Cargo carrying", urlOfImage: "http://sshelenchaltd.com/images/stories/slider/pic13.jpg"))
        

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var imagesCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        let rcv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        rcv.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        rcv.backgroundColor = UIColor.white
        rcv.translatesAutoresizingMaskIntoConstraints = false
        rcv.isPagingEnabled = true
        rcv.clipsToBounds = true
        rcv.keyboardDismissMode = .interactive
        rcv.tag = 1
        rcv.showsHorizontalScrollIndicator = false
        return rcv
    }()
    
    func setupImagesCollectionView() {
        
        imagesCollectionView.delegate = self
        imagesCollectionView.dataSource = self
        imagesCollectionView.register(ImageCell.self, forCellWithReuseIdentifier: imageCellId)
        
        contentView.addSubview(imagesCollectionView)
        NSLayoutConstraint.activate([imagesCollectionView.leftAnchor.constraint(equalTo: leftAnchor), imagesCollectionView.rightAnchor.constraint(equalTo: rightAnchor), imagesCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor), imagesCollectionView.topAnchor.constraint(equalTo: topAnchor)])
        
    }
}

extension HomeCollectionViewImagesCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfHomeImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: imageCellId, for: indexPath) as! ImageCell
        cell.homeImage = arrayOfHomeImage[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    
}
