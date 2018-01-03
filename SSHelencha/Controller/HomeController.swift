//
//  HomeController.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-03.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

    let homeCollectionViewCellId = "homeCollectionViewCellId"
    let homeImageCollectionViewCellId = "homeImageCollectionViewCellId"
    let homeCollectionViewOurClientCellId = "homeCollectionViewOurClientCellId"
    let homeCollectionViewWelcomeTextCellId = "homeCollectionViewWelcomeTextCellId"
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.navigationController?.navigationBar.layer.shadowColor = UIColor.lightGray.cgColor
        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.navigationController?.navigationBar.layer.shadowOpacity = 1.0
        self.navigationController?.navigationBar.layer.masksToBounds = false
        self.navigationItem.title = "Home"
        setupHomeCollectionView()
        addObservers()
    }
    
    func addObservers() {
        NotificationCenter.default.addObserver(self, selector: #selector(addedText), name: NSNotification.Name.init("addedText"), object: nil)
    }
    @objc func addedText() {
        DispatchQueue.main.async {
            self.homeCollectionView.reloadData()
            self.homeCollectionView.layoutIfNeeded()
        }
        
    }

    
    var homeCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 1
        layout.minimumInteritemSpacing = 0
        layout.estimatedItemSize = CGSize(width: 1, height: 1)
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

    
    func setupHomeCollectionView() {
        
        homeCollectionView.delegate = self
        homeCollectionView.dataSource = self
        homeCollectionView.register(HomeCollectionViewImagesCell.self, forCellWithReuseIdentifier: homeImageCollectionViewCellId)
        homeCollectionView.register(HomeCollectionViewOurClientCell.self, forCellWithReuseIdentifier: homeCollectionViewOurClientCellId)
        homeCollectionView.register(HomeCollectionViewWelcomeTextCell.self, forCellWithReuseIdentifier: homeCollectionViewWelcomeTextCellId)
        homeCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: homeCollectionViewCellId)
        
        
        
                view.addSubview(homeCollectionView)
        NSLayoutConstraint.activate([homeCollectionView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor), homeCollectionView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor), homeCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor), homeCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)])
        
    }
    

}


extension HomeController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.row {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: homeImageCollectionViewCellId, for: indexPath) as! HomeCollectionViewImagesCell
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: homeCollectionViewWelcomeTextCellId, for: indexPath) as! HomeCollectionViewWelcomeTextCell
            return cell
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: homeCollectionViewOurClientCellId, for: indexPath) as! HomeCollectionViewOurClientCell
            return cell
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: homeCollectionViewCellId, for: indexPath)
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch indexPath.row {
        case 0:
            return CGSize(width: collectionView.frame.width, height: collectionView.frame.width * 9/16)
        case 1:
            return CGSize(width: collectionView.frame.width, height: 600)
        case 2:
            return CGSize(width: collectionView.frame.width, height: collectionView.frame.width * 0.1)

        default:
            return  CGSize(width: collectionView.frame.width, height: 40)
        }
    }
    
    
}
