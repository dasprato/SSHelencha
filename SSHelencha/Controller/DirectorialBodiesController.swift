//
//  DiretorialBodiesController.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-03.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class DirectorialBodiesController: UIViewController {

    let directorialBodiesCollectionViewCellId = "directorialBodiesCollectionViewCellId"
    var arrayOfDirectors = [Director]()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.navigationController?.navigationBar.layer.shadowColor = UIColor.lightGray.cgColor
        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.navigationController?.navigationBar.layer.shadowOpacity = 1.0
        self.navigationController?.navigationBar.layer.masksToBounds = false
        self.navigationItem.title = "Directorial Bodies"
        
        
        arrayOfDirectors.append(Director(url: "http://sshelenchaltd.com/images/amol_babu.png", name: "Mr Amal Chandra Das"))
        arrayOfDirectors.append(Director(url: "http://sshelenchaltd.com/images/bithika_das.png", name: "Mrs Bithika Das"))
        arrayOfDirectors.append(Director(url: "http://sshelenchaltd.com/images/mithu_das.png", name: "Mr Debabrata Das Mithu"))
        
        
        setupDirectorialBodiesCollectionView()
    }

    
    var directorialBodiesCollectionView: UICollectionView = {
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
    
        func setupDirectorialBodiesCollectionView() {
    directorialBodiesCollectionView.delegate = self
    directorialBodiesCollectionView.dataSource = self
    directorialBodiesCollectionView.register(DirectorialBodiesCollectionViewCell.self, forCellWithReuseIdentifier: directorialBodiesCollectionViewCellId)
    
    
    
    view.addSubview(directorialBodiesCollectionView)
    NSLayoutConstraint.activate([directorialBodiesCollectionView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor), directorialBodiesCollectionView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor), directorialBodiesCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor), directorialBodiesCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)])
    }
    
    
    
}

extension DirectorialBodiesController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfDirectors.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: directorialBodiesCollectionViewCellId, for: indexPath) as! DirectorialBodiesCollectionViewCell
        cell.director = arrayOfDirectors[indexPath.row]
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width), height: (collectionView.frame.width) + 40)
    }
    
    
    
    
    
    
}

