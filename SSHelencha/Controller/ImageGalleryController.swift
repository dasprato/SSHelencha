//
//  ImageGalleryController.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-03.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class ImageGalleryController: UIViewController {

    let imageGalleryCollectionViewCellId = "imageGalleryCollectionViewCellId"
    var arrayOfImages = [ClientImage]()
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        self.navigationController?.navigationBar.layer.shadowColor = UIColor.lightGray.cgColor
        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.navigationController?.navigationBar.layer.shadowOpacity = 1.0
        self.navigationController?.navigationBar.layer.masksToBounds = false
        self.navigationItem.title = "Image Gallery"
        setupImageGalleryCollectionView()
        populateArray()
        
    }
    
    func populateArray() {
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/10153883_605965486168489_4638401024461402616_n.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/1448707748146.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20140909_145004.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20151009_113500.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/10933821_765825913515778_5732653214905337162_n.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20140909_144638.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20151006_100042.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20151009_134645.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/10934002_765825873515782_5831057669642846594_n.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20140909_144710.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20151006_102829.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20151009_141717.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/12141812_929566990475002_7026499799901960908_n.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20140909_144745.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20151006_111934.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20151012_111339.jpg"))
        
        
        
//        arrayOfImages.append(ClientImage(url: "<#T##String?#>"))
//        arrayOfImages.append(ClientImage(url: "<#T##String?#>"))
//        arrayOfImages.append(ClientImage(url: "<#T##String?#>"))
        
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20151012_112822.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20151113_112936.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20151113_113720.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20160205_104050.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20151012_114951.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20151113_113022.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20151113_113722.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20160205_104059.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20151012_115009.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20151113_113025.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20160205_103458.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20160205_104131.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20151012_124841.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20151113_113644.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20160205_103915.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20160207_175137.jpg"))
        
        
        
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20160208_155305.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20160208_161253.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20160209_162926.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20160208_155620.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20160208_162059.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20160209_163719.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20160208_160133.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20160208_162145.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20160209_163723.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20160208_160347.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/20160208_162206.jpg"))
        arrayOfImages.append(ClientImage(url: "http://sshelenchaltd.com/images/gallery/DSC_0251.jpg"))
    }
    
    func setupImageGalleryCollectionView() {
        
        imageGalleryCollectionView.delegate = self
        imageGalleryCollectionView.dataSource = self
        imageGalleryCollectionView.register(ImageGalleryCollectionViewCell.self, forCellWithReuseIdentifier: imageGalleryCollectionViewCellId)
        
        view.addSubview(imageGalleryCollectionView)
        NSLayoutConstraint.activate([imageGalleryCollectionView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor), imageGalleryCollectionView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor), imageGalleryCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor), imageGalleryCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)])
        
    }

    
    var imageGalleryCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 1
        layout.minimumInteritemSpacing = 0
        let rcv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        rcv.contentInset = UIEdgeInsets(top: 8, left: 0, bottom: 0, right: 0)
        rcv.backgroundColor = UIColor.white
        rcv.translatesAutoresizingMaskIntoConstraints = false
        rcv.clipsToBounds = true
        rcv.keyboardDismissMode = .interactive
        rcv.tag = 1
        rcv.showsVerticalScrollIndicator = false
        return rcv
    }()

}


extension ImageGalleryController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: imageGalleryCollectionViewCellId, for: indexPath) as! ImageGalleryCollectionViewCell
        cell.backgroundColor = UIColor(red: 100/255, green: 100/255, blue: (CGFloat(arc4random_uniform(255)))/255, alpha: 1)
        cell.image = arrayOfImages[indexPath.row]
        return cell
    }
    
//    @objc func open() {
//        switch currentCellIndex {
//        case 0:
//            let viewControllerToPush = HomeController()
//            self.navigationController?.pushViewController(viewControllerToPush, animated: true)
//        case 1:
//            let viewControllerToPush = OurServicesController()
//            self.navigationController?.pushViewController(viewControllerToPush, animated: true)
//        case 2:
//            let viewControllerToPush = OurResourcesController()
//            self.navigationController?.pushViewController(viewControllerToPush, animated: true)
//        case 3:
//            let viewControllerToPush = MajorClientsController()
//            self.navigationController?.pushViewController(viewControllerToPush, animated: true)
//        case 4:
//            let viewControllerToPush = CommercialImportController()
//            self.navigationController?.pushViewController(viewControllerToPush, animated: true)
//        case 5:
//            let viewControllerToPush = OurCapacityController()
//            self.navigationController?.pushViewController(viewControllerToPush, animated: true)
//        case 6:
//            let viewControllerToPush = ProjectsController()
//            self.navigationController?.pushViewController(viewControllerToPush, animated: true)
//        case 7:
//            let viewControllerToPush = DirectorialBodiesController()
//            self.navigationController?.pushViewController(viewControllerToPush, animated: true)
//        case 8:
//            let viewControllerToPush = ContactUsController()
//            self.navigationController?.pushViewController(viewControllerToPush, animated: true)
//        case 9:
//            let viewControllerToPush = ImageGalleryController()
//            self.navigationController?.pushViewController(viewControllerToPush, animated: true)
//        default:
//            break
//        }
//    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
//        print(indexPath.row)
//
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        self.currentCellIndex = indexPath.row
//        open()
        let viewControllerToPush = EnlargedImageGalleryController()
        viewControllerToPush.itemToScrollTo = indexPath
        viewControllerToPush.arrayOfImages = self.arrayOfImages
        self.navigationController?.pushViewController(viewControllerToPush, animated: true)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width - 1) / 2, height: (collectionView.frame.width) / 2)
    }
    
    
    
    
    
    
}
