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
        
        
        arrayOfDirectors.append(Director(url: "https://scontent.fyto1-1.fna.fbcdn.net/v/t35.0-12/26610057_1551202918262590_85503916_o.jpg?oh=ad6f6dbc41be708426db8edd185cf16d&oe=5A4FEB81", name: "Mr Amal Chandra Das"))
        arrayOfDirectors.append(Director(url: "https://scontent.fyto1-1.fna.fbcdn.net/v/t31.0-8/329043_224915360891359_6864964_o.jpg?oh=7e56d85019b39e7cbca9fc0f81db2aaf&oe=5AB5AD6A", name: "Mrs Bithika Das"))
        arrayOfDirectors.append(Director(url: "https://scontent.fyto1-1.fna.fbcdn.net/v/t1.0-9/20841063_1578736422137217_1117552246881834960_n.jpg?oh=00248662f75afea81b32fe5546eb5b75&oe=5ABD9C4C", name: "Mr Debabrata Das Mithu"))
        
        
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

