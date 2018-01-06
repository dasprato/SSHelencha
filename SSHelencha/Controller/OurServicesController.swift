//
//  OurServicesController.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-03.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class OurServicesController: UIViewController {


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.navigationController?.navigationBar.layer.shadowColor = UIColor.lightGray.cgColor
        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.navigationController?.navigationBar.layer.shadowOpacity = 1.0
        self.navigationController?.navigationBar.layer.masksToBounds = false
        self.navigationItem.title = "Our Services"
        
        

        setupScrollView()
    }
    
    func setupScrollView() {
        view.addSubview(welcomeTextLabel)
        NSLayoutConstraint.activate([welcomeTextLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor), welcomeTextLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor), welcomeTextLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor), welcomeTextLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor)])

        
    }
    
    


    
    var welcomeTextLabel: UITextView = {
        let wtl = UITextView()
        wtl.translatesAutoresizingMaskIntoConstraints = false
        wtl.textColor = UIColor.darkGray
        wtl.font = UIFont.boldSystemFont(ofSize: 16)
        wtl.isEditable = false
        
        
        var textToSet = NSMutableAttributedString()
        let text1 = NSMutableAttributedString(string: "Since 2010 we offer quality shipping and logistics services including Salvage Jobs, under water Inspection jobs and for these years our experience has made us even better in what we do. Our vessels, Barges, Tug Boats and Cranes ensure secure shipping and our professional team has been carefully chosen by us in order to provide our customers with the best services. Our company has large transport capacity – more than 2 Lac Metric Tons of cargo mainly include raw materials for Cement production like  Clinker, Slug, Lime Stone, Gypsum Etc and 2 Lac CBM machinery like heavy Machinery, Heavy Generator, Industrial Boiler, Factory Ball Mill Etc for Power Plant,  Factories and Industries per year. Our business activity is a global one – we have significant working experience with multinational companies. We provide transport, logistics services, and salvage jobs to some really prestigious companies with a large annual production capacity.\nWe are constantly working on increasing our handling capacity and the quality of our services. There are new vessels, Barges, Tug Boats & Cranes which are now under construction and which will help increase the capacity and the variety of the transport services that we offer.\nWe are able to offer high-quality services because of our professional team. Each of our employees knows exactly what and how needs to be done and does it with great motivation and attention to the details. The result is that our clients find in our company a loyal partner in which they can trust for providing quality shipping and logistics services.\n\n", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor.darkGray])
        
        let text2 = NSMutableAttributedString(string: "Salvage Jobs:\n", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor.darkGray])
        
        let text3 = NSMutableAttributedString(string: "Salvage operation all kinds of sunken vessel/craft.\n\n", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor.darkGray])
        
        let text4 = NSMutableAttributedString(string: "Under Water Jobs:\n", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor.darkGray])
        
        let text5 = NSMutableAttributedString(string: "All kinds of minor repairs and fitting, clearing wire, cables, chains from propeller etc. pullout engine from engine room by underwater cutting. Underwater demolition works, unwanted old jetty pillars and other jobs and oxy. Electric are cutting and welding jobs.\n\n", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor.darkGray])
        
        let text6 = NSMutableAttributedString(string: "Under water inspection jobs:\n", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor.darkGray])
        
        
        let text7 = NSMutableAttributedString(string: "All types of U/water Inspection, Examination and Survey of ships, Dams, Bridge pillars, Channels, Sunken.\n\n", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor.darkGray])
        
        let text8 = NSMutableAttributedString(string: "Towing Jobs:\n", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor.darkGray])
        
        
        let text9 = NSMutableAttributedString(string: "All types of towing of vessels or crafts.\n\n", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor.darkGray])
        
        let text10 = NSMutableAttributedString(string: "Salvage Experience:\n", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor.darkGray])
        
        
        let text11 = NSMutableAttributedString(string: "01. MV. Bristy (Capacity 1000 MT).\n02. MV. Sundorbon-1 (Capacity 1500 MT).\n03. MV. Blue Pacific (Capacity 2200 MT).\n04. MV. Sea Samrat\n05. MV. Sea Bird\n06. MV. Modern\n07. MV. Hang Gang-2\n08. MV. Chitto Master\n09. MV. Sea Horse\n10. MV. Summy -1\n11. MV. Bashundhara-16\n12. MV. Crown -2\n13. MV. Khaja Yunus Ali -1.\n14. MV. Sea Moon\n15. MV. Nafiz\n16. MV. Abul Kashem – 1.\n17. MV. Golap-2\n18. MV. Sristy Shohan.\n19. MV. Lita(Mother Vessel )\n20. MV. SS Kawla(Mother Vessel)\n21. MT. FS-1. (Towing Tug Boat)", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor.darkGray])
        
        
        textToSet.append(text1)
        textToSet.append(text2)
        textToSet.append(text3)
        textToSet.append(text4)
        textToSet.append(text5)
        textToSet.append(text6)
        textToSet.append(text7)
        textToSet.append(text8)
        textToSet.append(text9)
        textToSet.append(text10)
        textToSet.append(text11)
        
        wtl.attributedText = textToSet
        wtl.showsVerticalScrollIndicator = false
        
        return wtl
    }()

}

