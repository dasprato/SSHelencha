//
//  ContactUsController.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-03.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class ContactUsController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        self.navigationController?.navigationBar.layer.shadowColor = UIColor.lightGray.cgColor
        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.navigationController?.navigationBar.layer.shadowOpacity = 1.0
        self.navigationController?.navigationBar.layer.masksToBounds = false
        self.navigationItem.title = "Contact Us"
        
        view.addSubview(contactTextView)
        NSLayoutConstraint.activate([contactTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor), contactTextView.centerYAnchor.constraint(equalTo: view.centerYAnchor)])
    }



    private var contactTextView: FlexibleTextView = {
        let pi = FlexibleTextView()
        pi.translatesAutoresizingMaskIntoConstraints = false
        pi.contentMode = .scaleAspectFit
        pi.text = "S.S HELENCHA LIMITED\nB. S. Naher Building,(1st Floor),\nRoom No. 09-10,\nStrand Road,\nChittagong-4000,\nBangladesh.\nPhone: 88-03-2527155"
        pi.textAlignment = .center
        pi.font = UIFont.boldSystemFont(ofSize: 16)
        pi.textColor = UIColor.white
        pi.backgroundColor = UIColor.gray.withAlphaComponent(0.8)
        pi.isEditable = false
        pi.layer.cornerRadius = 10.0
        return pi
    }()
    
}
