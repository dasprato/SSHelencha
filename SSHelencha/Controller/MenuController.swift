//
//  HomeScrollController.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-03.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class MenuController: UIViewController{

    var arrayOfMenus = [Menu]()

    var currentCellIndex: Int!
    let mainCollectionViewCellId = "mainCollectionViewCellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        arrayOfMenus.append(Menu(titleForCell: "Home"))
        arrayOfMenus.append(Menu(titleForCell: "Our Services"))
        arrayOfMenus.append(Menu(titleForCell: "Our Resources"))
        arrayOfMenus.append(Menu(titleForCell: "Major Clients"))
        arrayOfMenus.append(Menu(titleForCell: "Commercial Import"))
        arrayOfMenus.append(Menu(titleForCell: "Our Capacity"))
        arrayOfMenus.append(Menu(titleForCell: "Projects"))
        arrayOfMenus.append(Menu(titleForCell: "Directorial Bodies"))
        arrayOfMenus.append(Menu(titleForCell: "Contact Us"))
        arrayOfMenus.append(Menu(titleForCell: "Image Gallery"))
        
        setupMainCollectionView()
        view.backgroundColor = UIColor.white
        mainCollectionView.backgroundColor = UIColor.white
        self.navigationItem.title = "SS Helencha"
        
        self.navigationController?.navigationBar.layer.shadowColor = UIColor.lightGray.cgColor
        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.navigationController?.navigationBar.layer.shadowOpacity = 1.0
        self.navigationController?.navigationBar.layer.masksToBounds = false
        
        
        NSLayoutConstraint.activate([logoImage.heightAnchor.constraint(equalToConstant: 40), logoImage.widthAnchor.constraint(equalToConstant: 40)])
        let barLogoImage = UIBarButtonItem(customView: logoImage)
                navigationItem.setLeftBarButtonItems([barLogoImage], animated: true)
    }
    
    func setupMainCollectionView() {
        
        mainCollectionView.delegate = self
        mainCollectionView.dataSource = self
        mainCollectionView.register(MainCollectionViewCell.self, forCellWithReuseIdentifier: mainCollectionViewCellId)
        
        view.addSubview(mainCollectionView)
        NSLayoutConstraint.activate([mainCollectionView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor), mainCollectionView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor), mainCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor), mainCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)])

    }
    
    override func viewDidAppear(_ animated: Bool) {

            self.mainCollectionView.reloadData()
        
    }

    

    var mainCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 1
        layout.minimumInteritemSpacing = 0
        let rcv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        rcv.contentInset = UIEdgeInsets(top: 8, left: 0, bottom: 0, right: 0)
        rcv.backgroundColor = UIColor.lightGray
        rcv.translatesAutoresizingMaskIntoConstraints = false
        rcv.clipsToBounds = true
        rcv.keyboardDismissMode = .interactive
        rcv.tag = 1
        rcv.showsVerticalScrollIndicator = false
        return rcv
    }()
    
    
    private var logoImage: UIImageView = {
        let pp = UIImageView()
        pp.translatesAutoresizingMaskIntoConstraints = false
        pp.image = UIImage(named: "MainLogo")
        pp.clipsToBounds = true
        pp.contentMode = .scaleAspectFit    
        return pp
    }()
}


extension MenuController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfMenus.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: mainCollectionViewCellId, for: indexPath) as! MainCollectionViewCell
        if !collectionView.isDragging || !collectionView.isDecelerating {
        UIView.animate(withDuration: 0.3) {
            cell.backgroundColor = UIColor(red: 150/255, green: 150/255, blue: 150/255, alpha: (CGFloat(arc4random_uniform(255)))/255)
        }
        }
        
        cell.titleForCellText = arrayOfMenus[indexPath.row]
        return cell
    }
    

    @objc func open() {
        switch currentCellIndex {
        case 0:
            let viewControllerToPush = HomeController()
                self.navigationController?.pushViewController(viewControllerToPush, animated: true)
        case 1:
            let viewControllerToPush = OurServicesController()
            self.navigationController?.pushViewController(viewControllerToPush, animated: true)
        case 2:
            let viewControllerToPush = OurResourcesController()
            self.navigationController?.pushViewController(viewControllerToPush, animated: true)
        case 3:
            let viewControllerToPush = MajorClientsController()
            self.navigationController?.pushViewController(viewControllerToPush, animated: true)
        case 4:
            let viewControllerToPush = CommercialImportController()
            self.navigationController?.pushViewController(viewControllerToPush, animated: true)
        case 5:
            let viewControllerToPush = OurCapacityController()
            self.navigationController?.pushViewController(viewControllerToPush, animated: true)
        case 6:
            let viewControllerToPush = ProjectsController()
            self.navigationController?.pushViewController(viewControllerToPush, animated: true)
        case 7:
            let viewControllerToPush = DirectorialBodiesController()
            self.navigationController?.pushViewController(viewControllerToPush, animated: true)
        case 8:
            let viewControllerToPush = ContactUsController()
            self.navigationController?.pushViewController(viewControllerToPush, animated: true)
        case 9:
            let viewControllerToPush = ImageGalleryController()
            self.navigationController?.pushViewController(viewControllerToPush, animated: true)
        default:
            break
        }
    }

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.currentCellIndex = indexPath.row
        open()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width - 1) / 2, height: (collectionView.frame.width) / 2)
    }
    
    override open var shouldAutorotate: Bool {
        return false
    }

    

    
    
    

}
