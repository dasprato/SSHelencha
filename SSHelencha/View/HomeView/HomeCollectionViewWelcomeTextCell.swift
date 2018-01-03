//
//  HomeCollectionViewWelcomeTextCell.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-03.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class HomeCollectionViewWelcomeTextCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
       contentView.addSubview(welcomeTextLabel)
    NSLayoutConstraint.activate([welcomeTextLabel.rightAnchor.constraint(equalTo: rightAnchor), welcomeTextLabel.topAnchor.constraint(equalTo: topAnchor), welcomeTextLabel.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.size.width)])
        
        
    }
    
    
    override func didAddSubview(_ subview: UIView) {
        NotificationCenter.default.post(name: NSNotification.Name.init("addedText"), object: nil)
        print("The height of welcome label text " + String(describing: welcomeTextLabel.bounds.height))
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    var welcomeTextLabel: FlexibleTextView = {
        let wtl = FlexibleTextView()
        wtl.translatesAutoresizingMaskIntoConstraints = false
        wtl.textColor = UIColor.lightGray
        wtl.font = UIFont.boldSystemFont(ofSize: 14)
        wtl.isUserInteractionEnabled = false
        wtl.text = "Welcome to the SS Helencha Limited Company profile. At SS Helencha, we understand that your primary concern is to get your freight from one point to another point, safely and reliably. With more than 5 years of experience in the logistics industry since 2010, we can provide you with the peace of mind you need to trust us with your freight \n \n Logistics is the backbone of commerce, and our working experience with multi-national companies and strong financial strengths allows handling more than 2 Lac Metric Tons of cargo per year. Our employees our same conviction for on-time delivery of cargo and our fleet of Vessels, Barges, Tug Boats & Cranes ensure that we have the right solution for your shipping needs. \n \n We believe that serving our clients is our top priority! To demonstrate our commitment to that philosophy, we are nearing completion of an additional three vessels, two drum Barge and one Tug Boat. We expect to take delivery of these vessels, Barge and Tug Boat 2016, and the extra capacity means that we can handle an even bigger workload to support our growing clients. \n \n         Why place your trust in lesser companies and risk delayed shipments or damaged cargo? At SS Helencha, our number one priority is ensuring that your cargo arrives at its destination free of damages and free of delays. Contact us today to discuss how we can meet and exceed your shipping needs."
        return wtl
    }()
    
    
    
}
