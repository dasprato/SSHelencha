//
//  OurCapacityController.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-03.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class OurCapacityController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.navigationController?.navigationBar.layer.shadowColor = UIColor.lightGray.cgColor
        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.navigationController?.navigationBar.layer.shadowOpacity = 1.0
        self.navigationController?.navigationBar.layer.masksToBounds = false
        self.navigationItem.title = "Our Capacity"
        
        
        view.addSubview(ourCapacityText)
        
        NSLayoutConstraint.activate([ourCapacityText.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor), ourCapacityText.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor), ourCapacityText.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor), ourCapacityText.bottomAnchor.constraint(equalTo: view.bottomAnchor)])
    }
    
    
    var ourCapacityText: UITextView = {
        let ost = UITextView()
        ost.translatesAutoresizingMaskIntoConstraints = false
        ost.textColor = UIColor.darkGray
        ost.font = UIFont.systemFont(ofSize: 16)
        ost.text = "Carrying Yearly more than 2 Lac Metric Tons of cargo all over Bangladesh mainly include raw materials for Cement production like Clinker, Slug, Lime Stone, Gypsum, Raw Sugar, Fertilizer, Coal, Food Items, Etc by Lighter Vessels.\n\nCarrying Yearly more than 2 Lac CBM machinery all over Bangladesh like heavy Machinery, Heavy Generator, Industrial Boiler, Factory Ball Mill Etc for Power Plant, Factories and Industries per year by Drum / Deck Loader Barge and Tug Boat.\n\nCarrying Yearly more than 1.5 Lac Metric tons Shipbuilding Ms Plate and MS. rolled steel coil all over Bangladesh by Drum / Deck Loader Barge and Tug Boat.\n\nUnloading Yearly more than 1.5 Lac Metric tons Cargo like Raw Sugar, Fertilizer, Coal, Food Items, Clinker, Slug, Lime Stone, Gypsum Etc. Various Ghat at Chittagong by Floating Crane."
        ost.isEditable = false
        ost.showsVerticalScrollIndicator = false
        return ost
    }()


}
