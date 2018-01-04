//
//  HomeController.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-04.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

    let imageCellId = "imageCellId"
    var arrayOfHomeImage = [HomeImage]()
    
    let clientImageCellId = "clientImageCellId"
    var arrayOfClientImages = [ClientImage]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.navigationController?.navigationBar.layer.shadowColor = UIColor.lightGray.cgColor
        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.navigationController?.navigationBar.layer.shadowOpacity = 1.0
        self.navigationController?.navigationBar.layer.masksToBounds = false
        self.navigationItem.title = "Home"


        populateArray()
        setupImagesCollectionView()
        setupClientImagesCollectionView()
        setupScrollView()
    }
    
    func setupScrollView() {
        view.addSubview(mainScrollView)
        NSLayoutConstraint.activate([mainScrollView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor), mainScrollView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor), mainScrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor), mainScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)])
        mainScrollView.contentSize.height = 1000
        mainScrollView.addSubview(imagesCollectionView)
        NSLayoutConstraint.activate([imagesCollectionView.heightAnchor.constraint(equalToConstant: view.frame.width * 9/20), imagesCollectionView.widthAnchor.constraint(equalToConstant: view.frame.width), imagesCollectionView.topAnchor.constraint(equalTo: mainScrollView.topAnchor), imagesCollectionView.centerXAnchor.constraint(equalTo: mainScrollView.centerXAnchor)])
        mainScrollView.addSubview(welcomeTextLabel)
        NSLayoutConstraint.activate([welcomeTextLabel.widthAnchor.constraint(equalToConstant: view.frame.width), welcomeTextLabel.topAnchor.constraint(equalTo: imagesCollectionView.bottomAnchor), welcomeTextLabel.centerXAnchor.constraint(equalTo: mainScrollView.centerXAnchor)])
                mainScrollView.addSubview(clientImagesCollectionView)
                NSLayoutConstraint.activate([clientImagesCollectionView.widthAnchor.constraint(equalToConstant: view.frame.width), clientImagesCollectionView.topAnchor.constraint(equalTo: welcomeTextLabel.bottomAnchor), clientImagesCollectionView.centerXAnchor.constraint(equalTo: mainScrollView.centerXAnchor), clientImagesCollectionView.heightAnchor.constraint(equalToConstant: view.frame.width * 0.1)])

    }
    
    
    override func viewDidLayoutSubviews() {
        mainScrollView.contentSize.height = imagesCollectionView.frame.height + welcomeTextLabel.frame.height + clientImagesCollectionView.frame.height
    }
    
    
    func populateArray() {
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Our Deck loader carrying Heavy Lift Cargo", urlOfImage: "http://sshelenchaltd.com/images/stories/slider/pic8.jpg"))
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Floating Crane", urlOfImage: "http://sshelenchaltd.com/images/stories/slider/pic5.jpg"))
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Our Deck loader carrying Heavy Lift Cargo", urlOfImage: "http://sshelenchaltd.com/images/stories/slider/pic4.jpg"))
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Cargo loaded on our barge", urlOfImage: "http://sshelenchaltd.com/images/stories/slider/pic6.jpg"))
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Project cargo loaded on our barge", urlOfImage: "http://sshelenchaltd.com/images/stories/slider/pic7.jpg"))
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Heavy lift packages on our barge", urlOfImage: "http://sshelenchaltd.com/images/stories/slider/pic11.jpg"))
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Heavy lift packages on our barge", urlOfImage: "http://sshelenchaltd.com/images/stories/slider/pic12.jpg"))
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Project Cargo carrying", urlOfImage: "http://sshelenchaltd.com/images/stories/slider/pic13.jpg"))
        
        
        arrayOfClientImages.append(ClientImage(url: "http://sshelenchaltd.com/images/stories/logo/Summit-Power-Limited-2.jpg"))
        arrayOfClientImages.append(ClientImage(url: "http://sshelenchaltd.com/images/stories/logo/S.-Alam-Logo.jpg"))
        arrayOfClientImages.append(ClientImage(url: "http://sshelenchaltd.com/images/stories/logo/diamond-cement.png"))
        arrayOfClientImages.append(ClientImage(url: "http://sshelenchaltd.com/images/stories/logo/BM-Energy_Logo_c-name_100h.jpg"))
        arrayOfClientImages.append(ClientImage(url: "http://sshelenchaltd.com/images/stories/logo/download.png"))
        arrayOfClientImages.append(ClientImage(url: "http://sshelenchaltd.com/images/stories/logo/gulf%20logo.jpg"))
        
    }
    
    
    var mainScrollView: UIScrollView = {
        let msv = UIScrollView()
        msv.translatesAutoresizingMaskIntoConstraints = false
        msv.contentInset = UIEdgeInsets(top: 8, left: 0, bottom: 0, right: 0)
        msv.showsVerticalScrollIndicator = false
        return msv
    }()
    
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
        rcv.keyboardDismissMode = .interactive
        rcv.tag = 0
        rcv.showsHorizontalScrollIndicator = false
        return rcv
    }()
    
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
    
    var welcomeTextLabel: FlexibleTextView = {
        let wtl = FlexibleTextView()
        wtl.translatesAutoresizingMaskIntoConstraints = false
        wtl.textColor = UIColor.lightGray
        wtl.font = UIFont.boldSystemFont(ofSize: 14)
        wtl.isUserInteractionEnabled = false
        wtl.text = "Welcome to the SS Helencha Limited Company profile. At SS Helencha, we understand that your primary concern is to get your freight from one point to another point, safely and reliably. With more than 5 years of experience in the logistics industry since 2010, we can provide you with the peace of mind you need to trust us with your freight\n\nLogistics is the backbone of commerce, and our working experience with multi-national companies and strong financial strengths allows handling more than 2 Lac Metric Tons of cargo per year. Our employees our same conviction for on-time delivery of cargo and our fleet of Vessels, Barges, Tug Boats & Cranes ensure that we have the right solution for your shipping needs.\n\nWe believe that serving our clients is our top priority! To demonstrate our commitment to that philosophy, we are nearing completion of an additional three vessels, two drum Barge and one Tug Boat. We expect to take delivery of these vessels, Barge and Tug Boat 2016, and the extra capacity means that we can handle an even bigger workload to support our growing clients.\n\nWhy place your trust in lesser companies and risk delayed shipments or damaged cargo? At SS Helencha, our number one priority is ensuring that your cargo arrives at its destination free of damages and free of delays. Contact us today to discuss how we can meet and exceed your shipping needs."
        return wtl
    }()
    
    func setupImagesCollectionView() {
        imagesCollectionView.delegate = self
        imagesCollectionView.dataSource = self
        imagesCollectionView.register(ImageCell.self, forCellWithReuseIdentifier: imageCellId)
    }
    
    func setupClientImagesCollectionView() {
        clientImagesCollectionView.delegate = self
        clientImagesCollectionView.dataSource = self
        clientImagesCollectionView.register(ClientImageCell.self, forCellWithReuseIdentifier: clientImageCellId)
    }
}

extension HomeController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 0 {
            return arrayOfHomeImage.count
        } else {
            return arrayOfClientImages.count
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView.tag == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: imageCellId, for: indexPath) as! ImageCell
            cell.homeImage = arrayOfHomeImage[indexPath.row]
        return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: clientImageCellId, for: indexPath) as! ClientImageCell
            cell.clientImage = arrayOfClientImages[indexPath.row]
        return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView.tag == 0 {
            return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        }
        else {
            return CGSize(width: collectionView.frame.width / 3, height: collectionView.frame.height)
        }
    }
    
    
    
}
    
    



