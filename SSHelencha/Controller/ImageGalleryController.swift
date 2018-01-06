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
        

        
        // FACEBOOK IMAGES
        arrayOfImages.append(ClientImage(url: "https://scontent.fyto1-1.fna.fbcdn.net/v/t1.0-9/14141727_1128799840551715_7980445216783744052_n.jpg?oh=ef04f7512fcaa6f943a0aa335d75ddbe&oe=5AE7F0D7"))

        arrayOfImages.append(ClientImage(url: "https://scontent.fyto1-1.fna.fbcdn.net/v/t1.0-9/15241753_1223425964422435_6548901255266467882_n.jpg?oh=fafdf1f12bb7b5beebacdf3e51638b66&oe=5ABE7079"))

        arrayOfImages.append(ClientImage(url: "https://scontent.fyto1-1.fna.fbcdn.net/v/t1.0-9/15268080_1223423887755976_6405335026912390114_n.jpg?oh=07e7030d7405ea479256481c027ce608&oe=5ABB1783"))

        arrayOfImages.append(ClientImage(url: "https://scontent.fyto1-1.fna.fbcdn.net/v/t1.0-9/15319034_1229179610513737_968353336052612020_n.jpg?oh=ee108c0140f40e3b24f311b44109cb89&oe=5AFDE296"))

        arrayOfImages.append(ClientImage(url: "https://scontent.fyto1-1.fna.fbcdn.net/v/t1.0-9/15401039_1229180327180332_3473537793565881641_n.jpg?oh=ca8ed4518208a5572b1fac9b2d37f6a8&oe=5AC022B0"))

        arrayOfImages.append(ClientImage(url: "https://scontent.fyto1-1.fna.fbcdn.net/v/t1.0-9/15380673_1229181477180217_3880049585577372454_n.jpg?oh=e00151b3d49645d4798614bcf872008d&oe=5AB0637C"))

        arrayOfImages.append(ClientImage(url: "https://scontent.fyto1-1.fna.fbcdn.net/v/t1.0-9/25398730_1593714327393595_2670795217632731462_n.jpg?oh=a7ae662723a03d4cd8b543d03d44f71e&oe=5ABAC5B7"))

    
            arrayOfImages.append(ClientImage(url: "https://scontent.fyto1-1.fna.fbcdn.net/v/t1.0-9/18622621_1390730447691985_8325192850597822597_n.jpg?oh=ee5142c6b8917cc295ff013da0951a9e&oe=5ABA9B7E"))
        
                    arrayOfImages.append(ClientImage(url: "https://scontent.fyto1-1.fna.fbcdn.net/v/t1.0-9/19989362_1434925253272504_5880898257310507924_n.jpg?oh=5bcd3e666671ed02c1e6cb3c95c2db57&oe=5AF72013"))

                    arrayOfImages.append(ClientImage(url: "https://scontent.fyto1-1.fna.fbcdn.net/v/t1.0-9/13507043_1085548464876853_297404287695416257_n.jpg?oh=637d928347f5bb9f2a7fb59b867b73e6&oe=5AF47980"))
        
                    arrayOfImages.append(ClientImage(url: "https://scontent.fyto1-1.fna.fbcdn.net/v/t1.0-9/19366626_1415360061895690_4843561367662674000_n.jpg?oh=85d8e67a6aedcaf3355075ca4d421b76&oe=5AB4442C"))
        
                    arrayOfImages.append(ClientImage(url: "https://scontent.fyto1-1.fna.fbcdn.net/v/t1.0-9/12814226_1015428745222159_2225579084268427441_n.jpg?oh=9b76be96d3e3b57d5d3684b4079d46db&oe=5AF03EF0"))
        
                            arrayOfImages.append(ClientImage(url: "https://scontent.fyto1-1.fna.fbcdn.net/v/t1.0-9/12802909_1015428208555546_3363266442396933959_n.jpg?oh=395b9baa6a7ff948ade83ded81acd93c&oe=5AB1DD39"))
        
                                    arrayOfImages.append(ClientImage(url: "https://scontent.fyto1-1.fna.fbcdn.net/v/t1.0-9/20431224_1449184781846551_1903550986012977272_n.jpg?oh=abc87b4c4333a616b6f5c095823a7674&oe=5AB2637E"))
        
                                    arrayOfImages.append(ClientImage(url: "https://scontent.fyto1-1.fna.fbcdn.net/v/t1.0-9/19959154_1434491143315915_2501489087700709212_n.jpg?oh=5bf9b75261efdc73aa8aff314f212227&oe=5AB6BBD4"))

        arrayOfImages.append(ClientImage(url: "https://scontent.fyto1-1.fna.fbcdn.net/v/t1.0-9/12806084_1015429481888752_697450596181211200_n.jpg?oh=913c6674d898b59e12819dd95790e68b&oe=5AFD0DBD"))

        

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
