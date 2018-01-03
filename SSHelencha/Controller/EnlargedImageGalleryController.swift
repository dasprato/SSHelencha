//
//  EnlargedImageGalleryController.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-03.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class EnlargedImageGalleryController: UIViewController {
    
    let imageGalleryCollectionViewCellId = "imageGalleryCollectionViewCellId"
    var arrayOfImages: [ClientImage]? {
        didSet {
            DispatchQueue.main.async {
                self.imagesCollectionView.reloadData()
            }

        }
    }
    var itemToScrollTo: IndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        self.navigationController?.navigationBar.layer.shadowColor = UIColor.lightGray.cgColor
        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.navigationController?.navigationBar.layer.shadowOpacity = 1.0
        self.navigationController?.navigationBar.layer.masksToBounds = false
        self.navigationItem.title = "Enlarged Gallery"
        setupImageGalleryCollectionView()

    
    }
    
    func setupImageGalleryCollectionView() {
        
        imagesCollectionView.delegate = self
        imagesCollectionView.dataSource = self
        imagesCollectionView.register(EnlargedImageCollectionViewCell.self, forCellWithReuseIdentifier: imageGalleryCollectionViewCellId)
        
        view.addSubview(imagesCollectionView)
        NSLayoutConstraint.activate([imagesCollectionView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor), imagesCollectionView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor), imagesCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor), imagesCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    var imagesCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        
        let rcv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        rcv.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        rcv.backgroundColor = UIColor.black
        rcv.translatesAutoresizingMaskIntoConstraints = false
        rcv.isPagingEnabled = true
        rcv.clipsToBounds = true
        rcv.keyboardDismissMode = .interactive
        rcv.tag = 1
        rcv.showsHorizontalScrollIndicator = false
        return rcv
    }()
    
    override func viewDidLayoutSubviews() {
        imagesCollectionView.scrollToItem(at: itemToScrollTo!, at: .centeredHorizontally, animated: false)
    }
    

}


extension EnlargedImageGalleryController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfImages!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: imageGalleryCollectionViewCellId, for: indexPath) as! EnlargedImageCollectionViewCell
        cell.backgroundColor = UIColor(red: 100/255, green: 100/255, blue: (CGFloat(arc4random_uniform(255)))/255, alpha: 1)
//        cell.vesselImage.image = UIImage(named: "MainLogo")
        cell.image = arrayOfImages?[indexPath.row]
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width), height: (collectionView.frame.height))
    }
    
    
    
    
    
    
}
