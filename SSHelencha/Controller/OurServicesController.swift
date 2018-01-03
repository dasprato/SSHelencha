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
        
        view.addSubview(ourServicesText)
        
        NSLayoutConstraint.activate([ourServicesText.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor), ourServicesText.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor), ourServicesText.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor), ourServicesText.bottomAnchor.constraint(equalTo: view.bottomAnchor)])
    }
    
    
    var ourServicesText: UITextView = {
        let ost = UITextView()
        ost.translatesAutoresizingMaskIntoConstraints = false
        ost.textColor = UIColor.lightGray
        ost.font = UIFont.boldSystemFont(ofSize: 16)
        ost.text = "Since 2010 we offer quality shipping and logistics services including Salvage Jobs, under water Inspection jobs and for these years our experience has made us even better in what we do. Our vessels, Barges, Tug Boats and Cranes ensure secure shipping and our professional team has been carefully chosen by us in order to provide our customers with the best services. Our company has large transport capacity – more than 2 Lac Metric Tons of cargo mainly include raw materials for Cement production like  Clinker, Slug, Lime Stone, Gypsum Etc and 2 Lac CBM machinery like heavy Machinery, Heavy Generator, Industrial Boiler, Factory Ball Mill Etc for Power Plant,  Factories and Industries per year. Our business activity is a global one – we have significant working experience with multinational companies. We provide transport, logistics services, and salvage jobs to some really prestigious companies with a large annual production capacity.\n\n We are constantly working on increasing our handling capacity and the quality of our services. There are new vessels, Barges, Tug Boats & Cranes which are now under construction and which will help increase the capacity and the variety of the transport services that we offer.\n\nWe are able to offer high-quality services because of our professional team. Each of our employees knows exactly what and how needs to be done and does it with great motivation and attention to the details. The result is that our clients find in our company a loyal partner in which they can trust for providing quality shipping and logistics services.\n\nSalvage Jobs:\nSalvage operation all kinds of sunken vessel/craft.\n\nUnder Water Jobs:\nAll kinds of minor repairs and fitting, clearing wire, cables, chains from propeller etc. pullout engine from engine room by underwater cutting. Underwater demolition works, unwanted old jetty pillars and other jobs and oxy. Electric are cutting and welding jobs.\n\nUnder water inspection jobs:\nAll types of U/water Inspection, Examination and Survey of ships, Dams, Bridge pillars, Channels, Sunken.\n\nTowing Jobs:\nAll types of towing of vessels or crafts."
//        let attributedText = NSAttributedString(string: <#T##String#>, attributes: <#T##[NSAttributedStringKey : Any]?#>)
        ost.isEditable = false
        ost.showsVerticalScrollIndicator = false
        return ost
    }()


}
