//
//  OurResourcesController.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-03.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class OurResourcesController: UIViewController {
    
    let ourResourcesTypeCollectionViewCellId = "ourResourcesTypeCollectionViewCellId"
    let ourResourcesDataCellId = "ourResourcesDataCellId"
    var arrayOfResourcesData = [Resource]()
    var arrayOfResourceTypes = [String]()
    var previousCellNumberForType: Int?
    var currentCellNumberForType: Int?
    var previousCellNumberForResource: Int?
    var currentCellNumberForResource: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.navigationController?.navigationBar.layer.shadowColor = UIColor.lightGray.cgColor
        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.navigationController?.navigationBar.layer.shadowOpacity = 1.0
        self.navigationController?.navigationBar.layer.masksToBounds = false
        self.navigationItem.title = "Our Resources"

        
        view.addSubview(resourceTypeCollectionView)
        NSLayoutConstraint.activate([resourceTypeCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor), resourceTypeCollectionView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor), resourceTypeCollectionView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor), resourceTypeCollectionView.heightAnchor.constraint(equalToConstant: 40)])
        view.addSubview(ourResourcesDataCollectionView)
        NSLayoutConstraint.activate([ourResourcesDataCollectionView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor), ourResourcesDataCollectionView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor), ourResourcesDataCollectionView.topAnchor.constraint(equalTo: resourceTypeCollectionView.bottomAnchor), ourResourcesDataCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)])
        populateArray()
        resourceTypeCollectionView.delegate = self
        resourceTypeCollectionView.dataSource = self
        ourResourcesDataCollectionView.delegate = self
        ourResourcesDataCollectionView.dataSource = self
        resourceTypeCollectionView.register(OurResourcesTypeCollectionViewCell.self, forCellWithReuseIdentifier: ourResourcesTypeCollectionViewCellId)
        ourResourcesDataCollectionView.register(OurResourcesDataCell.self, forCellWithReuseIdentifier: ourResourcesDataCellId)


    }
    
    func populateArray() {
        arrayOfResourceTypes.append("Vessel")
        arrayOfResourceTypes.append("Deck Loader")
        arrayOfResourceTypes.append("Tug")
        arrayOfResourceTypes.append("Equipment")
        
        // owned vessels
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "http://sshelenchaltd.com/images/own/lighter/mvistiaq.jpg", titleOfResource: "MV. ISTIAQUE", detailsOfResouce: "Type: Lighter Vessels. • Register No: C-921 • Length : 146 ft (44.60mt) • Breadth: 28 ft (8.55mt) • Depth : 11.48ft (3.50mt) • Capacity : 650 MT • Main Engines 2 x 325 = 650 BHP GM (USA) 6 Cylinders. • Re-Manufacture Year- 2014"))
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "http://sshelenchaltd.com/images/own/lighter/mvsuper.jpg", titleOfResource: "MV. SUPER-1", detailsOfResouce: "Type: Lighter Vessels • Register No. : C-536 • Length : 104 ft (31.70mt) • Breadth: 23 ft (7.00 mt) • Depth : 9ft (2.74 mt) • Main Engine 1 x 450 = 450 BHP China 6 Cylinders. • Capacity: 550 MT • Re-Manufacture Year- 2015."))
        
        // chartered vessels
        
        
        // owned deckloader
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "http://sshelenchaltd.com/images/own/LUSHI.jpg", titleOfResource: "DB. LUSHI", detailsOfResouce: "Length - 130 ft (39.63 mt) • Breadth - 34 ft (10.36 mt) • Depth - 8 ft (2.74 mt) • Capacity - 550 to 650 M/T • Manufacture Year- 2009 • Reg. No. - M 25045"))
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "http://sshelenchaltd.com/images/own/Poseidon.jpg", titleOfResource: "DB. POSEIDON", detailsOfResouce: "TLength - 130 ft (39.63 mt) • Breadth - 34 ft (10.36 mt) • Depth - 8 ft (2.74 mt) • Capacity - 550 to 650 M/T • Manufacture Year- 2009. • Reg. No. - M 25044"))
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "http://sshelenchaltd.com/images/own/Poseidon.jpg", titleOfResource: "DB. NILGIRI", detailsOfResouce: "Barge Name – DB. NILGIRI • Length - 110 ft (33.88 mt) • Breadth - 31 ft (9.74 mt) • Depth – 8.5 ft (2.66 mt) • Capacity - 450 to 550 M/T • Manufacture Year- 2010 • Reg. No. - D-17746"))
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "http://sshelenchaltd.com/images/own/River-King-1.jpg", titleOfResource: "DB. RIVER KING- 1", detailsOfResouce: "Length - 146 ft (44.51 mt) • Breadth - 47 ft (14.32 mt) • Depth – 11 ft (3.30 mt) • Capacity - 1200 to 1500 M/T • Manufacture Year- 2012 • Reg. No. - D-18087"))
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "http://sshelenchaltd.com/images/own/River-King-2.jpg", titleOfResource: "DB. RIVER KING- 2", detailsOfResouce: "Length - 146 ft (44.51 mt) • Breadth - 47 ft (14.32 mt) • Depth – 11 ft (3.30 mt) • Capacity - 1200 to 1500 M/T • Manufacture Year- 2012 • Reg. No. - D-18088"))
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "http://sshelenchaltd.com/images/own/Sumoti_Bala.jpg", titleOfResource: "DB. SUMOTI BALA", detailsOfResouce: "Length - 120 ft (36.59 mt) • Breadth - 35 ft (10.67 mt) • Depth – 8 ft (2.44 mt) • Capacity - 400 to 500 M/T • Manufacture Year- 2015 • Reg. No. - D-14102"))
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "http://sshelenchaltd.com/images/own/Nilachol.jpg", titleOfResource: "DB. NILACHOL", detailsOfResouce: "Length - 110 ft (33.54 mt) • Breadth - 33 ft (10.06 mt) • Depth – 7.5 ft (2.28 mt) • Capacity - 350 to 450 M/T • Manufacture Year- 2015 • Reg. No. - D-14102"))
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "http://sshelenchaltd.com/images/own/Nilantika.jpg", titleOfResource: "DB. NILANTIKA", detailsOfResouce: "Length - 152 ft (46.31 mt) • Breadth – 46 ft (14.04 mt) • Depth – 10.00 ft (3.05 mt) • Capacity - 1200 to 1500 M/T • Manufacture Year- 2014 • Reg. No. - D-9973"))
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "http://sshelenchaltd.com/images/own/niladri.jpg", titleOfResource: "DB. NILADRI", detailsOfResouce: "Length – 180 ft (54.88 mt) • Breadth – 50 ft (15.24 mt) • Depth – 10 ft (3.05 mt) • Capacity – 1400 to 1600 M/T • Manufacture Year- 2015"))
        
        // chartered deckloader
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "http://sshelenchaltd.com/images/ch_deck/AandJ.jpg", titleOfResource: "DB. A&J - 1", detailsOfResouce: "Length - 135 ft (41.15 mt) • Breadth - 40 ft (12.19 mt) • Depth - 8 ft (2.43 mt) • Capacity - 550 to 650 M/T • Manufacture Year - 2015 • Reg. No.- D-14103"))
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "http://sshelenchaltd.com/images/ch_deck/nahar.jpg", titleOfResource: "DB.Naher", detailsOfResouce: "Length - 125 ft (38.00 mt) • Breadth - 30 ft (9.15 mt) • Depth – 7.8 ft (2.37 mt) • Capacity - 400 to 500 M/T • Manufacture Year - 2011 • Reg. No. - D-17871"))
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "http://sshelenchaltd.com/images/ch_deck/Saraf-1.jpg", titleOfResource: "DB.SARAF-1", detailsOfResouce: "Length- 130 ft (39.64 mt) • Breadth- 30 ft (9.05 mt) • Depth– 8 ft (2.44 mt) • Capacity- 400 to 500 M/T • Manufacture Year- 2003 • Reg. No.- D-14024"))
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "http://sshelenchaltd.com/images/ch_deck/Akhter%20shirin.jpg", titleOfResource: "DB. AKTER SHRINE", detailsOfResouce: "Length - 125 ft (38.25 mt) • Breadth – 35 ft (10.80 mt) • Depth – 8 ft (2.43 mt) • Capacity - 400 to 500 M/T • Manufacture Year- 2013 • Reg. No.- M-9920"))
        
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "http://sshelenchaltd.com/images/ch_deck/Santosh2.jpg", titleOfResource: "DB. SANTOSH - 2", detailsOfResouce: "Length - 150 ft (45.73 mt) • Breadth – 45 ft (13.72 mt) • Depth – 11 ft (3.36 mt) • Capacity - 1000 to 1200 M/T • Manufacture Year- 2015 • Reg. No.- D-14098"))
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "", titleOfResource: "DB. SANANDA", detailsOfResouce: "Length - 150 ft (45.73 mt) • Breadth– 47 ft (14.33 mt • Depth– 9.8 ft (3.00 mt) • Capacity- 1000 to 1200 M/T • Manufacture Year- 2015 • Reg. No.- D-25076"))
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "http://sshelenchaltd.com/images/ch_deck/alpha.jpg", titleOfResource: "Barge Name – DB. ALFA", detailsOfResouce: "Length - 150 ft (45.73 mt) • Breadth – 46 ft (14.03 mt) • Depth – 10.66 ft (3.25 mt) • Capacity - 1000 to 1200 M/T • Manufacture Year- 2015 • Reg. No. - D-14093"))
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "", titleOfResource: "DB. RUSLAN TAHER", detailsOfResouce: "Length - 130 ft (39.60 mt) • Breadth– 40 ft (12.20 mt) • Depth– 8.50 ft (2.59 mt) • Capacity- 500 to 600 M/T • Manufacture Year- 2015 • Reg. No.- D-14100"))
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "http://sshelenchaltd.com/images/ch_deck/wbmc1.jpg", titleOfResource: "DB. WBMC", detailsOfResouce: "Length - 130 ft (39.65 mt) • Breadth – 40 ft (12.20 mt) • Depth – 9.50 ft (2.88 mt) • Capacity - 500 to 600 M/T • Manufacture Year- 2006 • Reg. No. - D-25019"))
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "http://sshelenchaltd.com/images/ch_deck/seaqueenexp1.jpg", titleOfResource: "DB. SEA QUEEN EXPRESS -2", detailsOfResouce: "Length - 160 ft (48.80 mt) • Breadth – 46 ft (14.03 mt) • Depth – 9.80 ft (2.98 mt) • Capacity - 1200 to 1500 M/T • Manufacture Year- 2015. • Reg. No. - D-25069"))
        
        
        // owned Tugs
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "http://sshelenchaltd.com/images/own/tug/ps-1.jpg", titleOfResource: "MT. PS-1", detailsOfResouce: "TType : Steel Tug Boat and Supply Vessel/ Towing Tug • Register No.: M 9779 • Length: 17.00 mt (55.76 ft) • Breadth: 05.48 mt ( 18.00 ft) • Depth: 02.40 mt ( 7.87 ft ) • Main Engines 2 x 475 BHP Hino (Japan) 8 Cylinder = 950 BHP • Manufacture Year- 2013"))
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "http://sshelenchaltd.com/images/own/tug/Dynamic.jpg", titleOfResource: "MT. DYNAMIC", detailsOfResouce: "Type: Steel Tug Boat and Supply Vessel/ Towing Tug • Register No.: C 130 • Length: 25.91  mt ( 85.00 ft) • Breadth: 8.80 mt  (29.00 ft) • Depth: 4.20 mt (14.00 ft) • Main Engines 2 x 1000 = 2000 BHP Hansin 6 Cylinders. • Manufacture Year- 1972"))
        
        // chartered Tugs
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "http://sshelenchaltd.com/images/ch_deck/tug/seagulpride4.jpg", titleOfResource: "MT. SEA GULL PRIDE-4", detailsOfResouce: "Type Steel Tug Boat and Supply Vessel/ Towing Tug • Register No. : M 01-1153 • Length: 21.30 mt ( 70.00 ft) • Breadth: 6.06 mt (19.80 ft) • Depth: 3.62 mt (11.90 ft) • Main Engines 2 x 550 = 1100 BHP China 6 Cylinders • Manufacture Year- 2015"))
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "http://sshelenchaltd.com/images/ch_deck/tug/jamalkashem.jpg", titleOfResource: "MV. Jamal & Kashem", detailsOfResouce: "Type Steel Tug Boat and Supply Vessel/ Towing Tug • Register No.: M 19302 • Length: 21.13 mt ( 69.00 ft) • Breadth: 5.48 mt  (18.00 ft) • Depth: 02.13 mt (7.00 ft) • Main Engines 1 x 525 = 525 BHP Hino (Japan) 6 Cylinder. • Manufacture Year- 2015"))
        
        
        
        // Equipments
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "http://sshelenchaltd.com/images/own/Excavator.jpg", titleOfResource: "7 SUMITOMO CRAWLER EXCAVATOR", detailsOfResouce: "Type: Hydraulic Excavator • Boom Type: Box Boom • Brand: Sumitomo Japan"))
        
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "https://sc01.alicdn.com/kf/HTB1xsLFJFXXXXXCXpXXq6xXFXXX9/P-H-CRAWLER-CRANE-320-H-.jpg", titleOfResource: "35 TON P&H TRUCK CRANE", detailsOfResouce: "Capacity: 35 Ton • Type: Mechanical. (Floating) • Boom Length: 70 ft (21.34mt) • Boom Type: Tower Boom • Brand: P&H • BTRC Reg. No: Chatta Metro – Sha,11-0051"))
        
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "https://sc01.alicdn.com/kf/HTB1xsLFJFXXXXXCXpXXq6xXFXXX9/P-H-CRAWLER-CRANE-320-H-.jpg", titleOfResource: "35 TON P&H CRAWLER CRANE", detailsOfResouce: "Capacity: 35 Ton • Type: Mechanical. (Floating) • Boom Length: 75 ft (22.86mt) • Boom Type: Tower Boom • Brand: P&H"))
        
        arrayOfResourcesData.append(Resource(urlOfResourceImage: "https://sc01.alicdn.com/kf/HTB1xsLFJFXXXXXCXpXXq6xXFXXX9/P-H-CRAWLER-CRANE-320-H-.jpg", titleOfResource: "30 TON HITACHI CRAWLER CRANE", detailsOfResouce: "Capacity: 30 Ton • Type: Mechanical. (Floating) • Boom Length: 70 ft (21.34mt) • Boom Type: Tower Boom • Brand: Hitachi"))
        
        
        
        
        


    }

    
    var resourceTypeCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        let rcv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        rcv.contentInset = UIEdgeInsets(top: 8, left: 0, bottom: 0, right: 0)
        rcv.backgroundColor = UIColor.white
        rcv.translatesAutoresizingMaskIntoConstraints = false
        rcv.clipsToBounds = true
        rcv.isPagingEnabled = true
        rcv.tag = 1
        rcv.showsHorizontalScrollIndicator = false
        rcv.bounces = false
        return rcv
    }()
    
    var ourResourcesDataCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        let rcv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        rcv.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        rcv.backgroundColor = UIColor.white
        rcv.translatesAutoresizingMaskIntoConstraints = false
        rcv.clipsToBounds = true
        rcv.tag = 2
        rcv.showsVerticalScrollIndicator = false

        return rcv
    }()
    


}


extension OurResourcesController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 1 {
            return arrayOfResourceTypes.count
        } else {
            return arrayOfResourcesData.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView.tag == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ourResourcesTypeCollectionViewCellId, for: indexPath) as! OurResourcesTypeCollectionViewCell
            cell.titleForCell = arrayOfResourceTypes[indexPath.row]
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ourResourcesDataCellId, for: indexPath) as! OurResourcesDataCell
            cell.resource = self.arrayOfResourcesData[indexPath.row]
            return cell
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let approximateWidth = view.frame.width - 16
        let size = CGSize(width: approximateWidth, height: 1000000)
        let attributes = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 14)]
        let estimatedFrame = NSString(string: arrayOfResourcesData[indexPath.row].detailsOfResouce!).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
        
        if collectionView.tag == 1 {
            return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        } else {
            return CGSize(width: collectionView.frame.width, height: (view.frame.width * 2/3) + 50 + estimatedFrame.height)
        }
    }
    
    //called when the cell is about to be displayed
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if collectionView.tag == 1 {
            self.currentCellNumberForType = indexPath.row
            if previousCellNumberForType != currentCellNumberForType {
                print("Current:")
                print(indexPath.row)
            }
        }
        
//        else if collectionView.tag == 2 {
//            self.currentCellNumberForResource = indexPath.row
//            if previousCellNumberForResource != currentCellNumberForResource {
//                print("Current:")
//                print(indexPath.row)
//            }
//        }

    }
    
    func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if collectionView.tag == 1 {
            self.previousCellNumberForType = indexPath.row
            if previousCellNumberForType != currentCellNumberForType {
                scrollToItem()
                print("Previous:")
                print(indexPath.row)
            }
        }
//        else if collectionView.tag == 2 {
//            self.previousCellNumberForResource = indexPath.row
//            if previousCellNumberForResource != currentCellNumberForResource {
//                scrollToItemInType()
//                print("Previous:")
//                print(indexPath.row)
//            }
//        }
    }
    
    func scrollToItem() {
//        if resourceTypeCollectionView.isDragging{
            if currentCellNumberForType == 0 {
            ourResourcesDataCollectionView.scrollToItem(at: IndexPath(row: 0, section: 0), at: .top, animated: true)
            }
            else if currentCellNumberForType == 1 {
                ourResourcesDataCollectionView.scrollToItem(at: IndexPath(row: 2, section: 0), at: .top, animated: true)
            }
            else if currentCellNumberForType == 2 {
                ourResourcesDataCollectionView.scrollToItem(at: IndexPath(row: 21, section: 0), at: .top, animated: true)
            }
            else if currentCellNumberForType == 3 {
                ourResourcesDataCollectionView.scrollToItem(at: IndexPath(row: 25, section: 0), at: .top, animated: true)
            }
//        }
    }
    
    func scrollToItemInType() {
//        if ourResourcesDataCollectionView.isDragging {
//        guard let unwrappedCurrentCellNumberForType = currentCellNumberForResource else { return }
//        if (unwrappedCurrentCellNumberForType < 2) {
//            resourceTypeCollectionView.scrollToItem(at: IndexPath(row: 0, section: 0), at: .centeredHorizontally, animated: false)
//        }
//        else if (unwrappedCurrentCellNumberForType >= 2 || unwrappedCurrentCellNumberForType < 21) {
//            resourceTypeCollectionView.scrollToItem(at: IndexPath(row: 1, section: 0), at: .centeredVertically, animated: false)
//        }
//        else if (unwrappedCurrentCellNumberForType >= 21 || unwrappedCurrentCellNumberForType < 25) {
//            resourceTypeCollectionView.scrollToItem(at: IndexPath(row: 2, section: 0), at: .centeredVertically, animated: false)
//        }
//        else if (unwrappedCurrentCellNumberForType >= 25) {
//            resourceTypeCollectionView.scrollToItem(at: IndexPath(row: 3, section: 0), at: .centeredVertically, animated: false)
//        }
//        }
    }
    
}
