//
//  HomeController.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-04.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    var currentCellNumber: IndexPath?
    var previousCellNumber: IndexPath?
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
        startTimer()
        
    }
    
    func setupScrollView() {
        view.addSubview(mainScrollView)
        NSLayoutConstraint.activate([mainScrollView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor), mainScrollView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor), mainScrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor), mainScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)])
        mainScrollView.addSubview(imagesCollectionView)
        NSLayoutConstraint.activate([imagesCollectionView.heightAnchor.constraint(equalToConstant: view.frame.width * 3 / 4), imagesCollectionView.widthAnchor.constraint(equalToConstant: view.frame.width), imagesCollectionView.topAnchor.constraint(equalTo: mainScrollView.topAnchor), imagesCollectionView.centerXAnchor.constraint(equalTo: mainScrollView.centerXAnchor)])
        mainScrollView.addSubview(welcomeTextLabel)
        NSLayoutConstraint.activate([welcomeTextLabel.widthAnchor.constraint(equalToConstant: view.frame.width), welcomeTextLabel.topAnchor.constraint(equalTo: imagesCollectionView.bottomAnchor), welcomeTextLabel.centerXAnchor.constraint(equalTo: mainScrollView.centerXAnchor)])
                mainScrollView.addSubview(clientImagesCollectionView)
                NSLayoutConstraint.activate([clientImagesCollectionView.widthAnchor.constraint(equalToConstant: view.frame.width), clientImagesCollectionView.topAnchor.constraint(equalTo: welcomeTextLabel.bottomAnchor), clientImagesCollectionView.centerXAnchor.constraint(equalTo: mainScrollView.centerXAnchor), clientImagesCollectionView.heightAnchor.constraint(equalToConstant: view.frame.width * 0.1)])

    }
    
    var timerForImages: Timer?
    var timerForTheTimerForImages: Timer?
    
    @objc func startTimer() {
        timerForImages = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(scrollToNextItem), userInfo: nil, repeats: true)
        
        RunLoop.current.add(timerForImages!, forMode: RunLoopMode.commonModes)
    }
    
//    func startAnotherTimer() {
//        timerForTheTimerForImages = Timer.scheduledTimer(timeInterval: 15, target: self, selector: #selector(startTimer), userInfo: nil, repeats: false)
//
//        RunLoop.current.add(timerForTheTimerForImages!, forMode: RunLoopMode.commonModes)
//    }
    
    
    @objc func scrollToNextItem() {

            if (currentCellNumber?.row)! >= arrayOfHomeImage.count - 1 {
                imagesCollectionView.scrollToItem(at: IndexPath(row: 0, section: 0), at: .centeredHorizontally, animated: false)
                imagesCollectionView.alpha = 0
                UIView.animate(withDuration: 0.3, animations: {
                    self.imagesCollectionView.alpha = 1
                })
            } else {
                    imagesCollectionView.scrollToItem(at: IndexPath(row: (currentCellNumber?.row)! + 1, section: 0), at: .centeredHorizontally, animated: false)
                imagesCollectionView.alpha = 0
                UIView.animate(withDuration: 0.3, animations: {
                    self.imagesCollectionView.alpha = 1
                })

            }
        
        
    }
    
    override func viewDidLayoutSubviews() {
        mainScrollView.contentSize.height = imagesCollectionView.frame.height + welcomeTextLabel.frame.height + clientImagesCollectionView.frame.height
    }
    
//    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
//        timerForImages?.invalidate()
//        startAnotherTimer()
//    }
//
//    func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
//        startAnotherTimer()
//    }
    
    func populateArray() {
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Our Deck loader carrying Heavy Lift Cargo", urlOfImage: "http://sshelenchaltd.com/images/stories/slider/pic8.jpg"))
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Floating Crane", urlOfImage: "http://sshelenchaltd.com/images/stories/slider/pic5.jpg"))
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Our Deck loader carrying Heavy Lift Cargo", urlOfImage: "http://sshelenchaltd.com/images/stories/slider/pic4.jpg"))
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Cargo loaded on our barge", urlOfImage: "http://sshelenchaltd.com/images/stories/slider/pic6.jpg"))
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Project cargo loaded on our barge", urlOfImage: "http://sshelenchaltd.com/images/stories/slider/pic7.jpg"))
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Heavy lift packages on our barge", urlOfImage: "http://sshelenchaltd.com/images/stories/slider/pic11.jpg"))
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Heavy lift packages on our barge", urlOfImage: "http://sshelenchaltd.com/images/stories/slider/pic12.jpg"))
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Project Cargo carrying", urlOfImage: "http://sshelenchaltd.com/images/stories/slider/pic13.jpg"))
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Largest Vessel in Karnaphuli", urlOfImage: "https://scontent.fyto1-1.fna.fbcdn.net/v/t1.0-9/14141727_1128799840551715_7980445216783744052_n.jpg?oh=ef04f7512fcaa6f943a0aa335d75ddbe&oe=5AE7F0D7"))
        arrayOfHomeImage.append(HomeImage(titleOfImage: "Our Stone Import", urlOfImage: "https://scontent.fyto1-1.fna.fbcdn.net/v/t1.0-9/18622621_1390730447691985_8325192850597822597_n.jpg?oh=ee5142c6b8917cc295ff013da0951a9e&oe=5ABA9B7E"))
        
        
        
        
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
        rcv.isUserInteractionEnabled = false
        
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
        wtl.textColor = UIColor.darkGray
        wtl.font = UIFont.boldSystemFont(ofSize: 16)
        wtl.isUserInteractionEnabled = false
        
        var textToSet = NSMutableAttributedString()
        let text1 = NSMutableAttributedString(string: "Welcome to the ", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor.darkGray])
        let text2 = NSMutableAttributedString(string: "SS Helencha Limited ", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor.darkGray])
        
                let text3 = NSMutableAttributedString(string: "Company profile. ", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor.darkGray])
        
                let text4 = NSMutableAttributedString(string: "At ", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor.darkGray])
        
                let text5 = NSMutableAttributedString(string: "SS Helencha", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor.darkGray])
        
                let text6 = NSMutableAttributedString(string: ", we understand that your primary concern is to get your freight from one point to another point, safely and reliably. With more than 5 years of experience in the logistics industry since 2010, we can provide you with the peace of mind you need to trust us with your freight\n\nLogistics is the backbone of commerce, and our working experience with multi-national companies and strong financial strengths allows handling more than 2 Lac Metric Tons of cargo per year. Our employees our same conviction for on-time delivery of cargo and our fleet of Vessels, Barges, Tug Boats & Cranes ensure that we have the right solution for your shipping needs.\n\nWe believe that serving our clients is our top priority! To demonstrate our commitment to that philosophy, we are nearing completion of an additional three vessels, two drum Barge and one Tug Boat. We expect to take delivery of these vessels, Barge and Tug Boat 2016, and the extra capacity means that we can handle an even bigger workload to support our growing clients.\n\nWhy place your trust in lesser companies and risk delayed shipments or damaged cargo? At, ", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor.darkGray])
        
        
                        let text7 = NSMutableAttributedString(string: "SS Helencha ", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor.darkGray])
        
                        let text8 = NSMutableAttributedString(string: "our number one priority is ensuring that your cargo arrives at its destination free of damages and free of delays. Contact us today to discuss how we can meet and exceed your shipping needs.", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor.darkGray])

        
        textToSet.append(text1)
        textToSet.append(text2)
        textToSet.append(text3)
        textToSet.append(text4)
        textToSet.append(text5)
        textToSet.append(text6)
        textToSet.append(text7)
        textToSet.append(text8)
        wtl.attributedText = textToSet
        
    
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
    
    
    //called when the cell is about to be displayed
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {

        if collectionView.tag == 0 {
        self.currentCellNumber = indexPath
        print(self.currentCellNumber)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {


    }
    
    
    
}
    
    



