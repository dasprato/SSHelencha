//
//  CommercialImportController.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-03.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class CommercialImportController: UIViewController {

    
    let commercialImportCollectionViewCellId = "commercialImportCollectionViewCellId"
    var arrayOfImages = [ClientImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.navigationController?.navigationBar.layer.shadowColor = UIColor.lightGray.cgColor
        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.navigationController?.navigationBar.layer.shadowOpacity = 1.0
        self.navigationController?.navigationBar.layer.masksToBounds = false
        self.navigationItem.title = "Commercial Import"
        
        

        setupImagesCollectionView()
                setupTextView()
        populateArray()
        

    }
    
    func setupTextView() {
        view.addSubview(textView)
        NSLayoutConstraint.activate([textView.centerXAnchor.constraint(equalTo: view.centerXAnchor), textView.centerYAnchor.constraint(equalTo: view.centerYAnchor), textView.widthAnchor.constraint(equalTo: view.widthAnchor)])
    }

    func populateArray() {
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/Lentils_nipper.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/Corn1.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/lentils_bag.jpg"))
    }
    
    func setupImagesCollectionView() {
        
        imagesCollectionView.delegate = self
        imagesCollectionView.dataSource = self
        imagesCollectionView.register(CommercialImportCollectionViewCell.self, forCellWithReuseIdentifier: commercialImportCollectionViewCellId)
        
        view.addSubview(imagesCollectionView)
        NSLayoutConstraint.activate([imagesCollectionView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor), imagesCollectionView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor), imagesCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor), imagesCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)])
        
    }
    
    
    
    var imagesCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        let rcv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        rcv.contentInset = UIEdgeInsets(top: 8, left: 0, bottom: 0, right: 0)
        rcv.backgroundColor = UIColor.white
        rcv.translatesAutoresizingMaskIntoConstraints = false
        rcv.clipsToBounds = true
        rcv.keyboardDismissMode = .interactive
        rcv.tag = 1
        rcv.showsVerticalScrollIndicator = false
        rcv.isPagingEnabled = true
        return rcv
    }()
    
    var textView: FlexibleTextView = {
    
        let tv = FlexibleTextView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.textColor = UIColor.darkGray
        tv.font = UIFont.systemFont(ofSize: 16)
        tv.text = "We offer a healthy and nutritious range of food grains which are highly rich in quality.We deliver our products as per the desired needs of our clients.We assure our customer of the complete satisfactory and easy availability of our food grains,mainly included – Australian Lentils Nipper, Chick-pea, Yellow Piece, Wheat, Canadian Crimson lentils, Corn etc."
        tv.isEditable = false
        tv.textAlignment = .center
        tv.backgroundColor = UIColor.clear
        return tv
    }()
    
    

}


extension CommercialImportController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: commercialImportCollectionViewCellId, for: indexPath) as! CommercialImportCollectionViewCell
        cell.image = arrayOfImages[indexPath.row]
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
}

