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
        view.addSubview(companyLogo)
        view.addSubview(sisterConcern1)
        view.addSubview(sisterConcern2)
        view.addSubview(sisterConcern3)
        view.addSubview(sisterConcern4)
        view.addSubview(sisterConcern5)
        NSLayoutConstraint.activate([contactTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor), contactTextView.topAnchor.constraint(equalTo: companyLogo.bottomAnchor)])
        NSLayoutConstraint.activate([companyLogo.topAnchor.constraint(equalTo: view.topAnchor), companyLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor), companyLogo.heightAnchor.constraint(equalToConstant: view.frame.width * 0.7), companyLogo.widthAnchor.constraint(equalToConstant: view.frame.width  * 0.7)])
        
        NSLayoutConstraint.activate([sisterConcern1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor), sisterConcern1.widthAnchor.constraint(equalToConstant: view.frame.width * 0.1), sisterConcern1.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor), sisterConcern1.heightAnchor.constraint(equalToConstant: view.frame.width * 0.1)])
        
                NSLayoutConstraint.activate([sisterConcern2.topAnchor.constraint(equalTo: sisterConcern1.bottomAnchor), sisterConcern2.rightAnchor.constraint(equalTo: sisterConcern1.rightAnchor), sisterConcern2.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor), sisterConcern2.heightAnchor.constraint(equalToConstant: view.frame.width * 0.1)])
        
                NSLayoutConstraint.activate([sisterConcern3.topAnchor.constraint(equalTo: sisterConcern2.bottomAnchor), sisterConcern3.rightAnchor.constraint(equalTo: sisterConcern1.rightAnchor), sisterConcern3.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor), sisterConcern3.heightAnchor.constraint(equalToConstant: view.frame.width * 0.1)])
        
        
                NSLayoutConstraint.activate([sisterConcern4.topAnchor.constraint(equalTo: sisterConcern3.bottomAnchor), sisterConcern4.rightAnchor.constraint(equalTo: sisterConcern1.rightAnchor), sisterConcern4.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor), sisterConcern4.heightAnchor.constraint(equalToConstant: view.frame.width * 0.1)])
        
                NSLayoutConstraint.activate([sisterConcern5.topAnchor.constraint(equalTo: sisterConcern4.bottomAnchor), sisterConcern5.rightAnchor.constraint(equalTo: sisterConcern1.rightAnchor), sisterConcern5.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor), sisterConcern5.heightAnchor.constraint(equalToConstant: view.frame.width * 0.1)])
        
    }
    



    private var contactTextView: FlexibleTextView = {
        let pi = FlexibleTextView()
        pi.translatesAutoresizingMaskIntoConstraints = false
        pi.contentMode = .scaleAspectFit
        pi.text = "S.S HELENCHA LIMITED\nB. S. Naher Building,(1st Floor),\nRoom No. 09-10,\nStrand Road,\nChittagong-4000,\nBangladesh.\nPhone: 88-03-2527155"
        pi.textAlignment = .center
        pi.font = UIFont.boldSystemFont(ofSize: 16)
        pi.textColor = UIColor(red: 30/255, green: 30/255, blue: 150/255, alpha: 1)
        pi.isEditable = false
        pi.layer.cornerRadius = 10.0
        return pi
    }()
    
    
    private var companyLogo: UIImageView = {
        let pi = UIImageView()
        pi.translatesAutoresizingMaskIntoConstraints = false
        pi.clipsToBounds = true
        pi.contentMode = .scaleAspectFit
        pi.image = UIImage(named: "MainLogo")
        return pi
    }()
    
    private var sisterConcern1: UIImageView = {
        let pi = UIImageView()
        pi.translatesAutoresizingMaskIntoConstraints = false
        pi.clipsToBounds = true
        pi.contentMode = .scaleAspectFit
        pi.image = UIImage(named: "ps-salvage")
        return pi
    }()
    private var sisterConcern2: UIImageView = {
        let pi = UIImageView()
        pi.translatesAutoresizingMaskIntoConstraints = false
        pi.clipsToBounds = true
        pi.contentMode = .scaleAspectFit
        pi.image = UIImage(named: "psshipping-bunker")
        return pi
    }()
    private var sisterConcern3: UIImageView = {
        let pi = UIImageView()
        pi.translatesAutoresizingMaskIntoConstraints = false
        pi.clipsToBounds = true
        pi.contentMode = .scaleAspectFit
        pi.image = UIImage(named: "SS-SHIPBUILDERS")
        return pi
    }()
    private var sisterConcern4: UIImageView = {
        let pi = UIImageView()
        pi.translatesAutoresizingMaskIntoConstraints = false
        pi.clipsToBounds = true
        pi.contentMode = .scaleAspectFit
        pi.image = UIImage(named: "sshelencha-navigation")
        return pi
    }()
    
    private var sisterConcern5: UIImageView = {
        let pi = UIImageView()
        pi.translatesAutoresizingMaskIntoConstraints = false
        pi.clipsToBounds = true
        pi.contentMode = .scaleAspectFit
        pi.image = UIImage(named: "SSMARINE-NAVIGATION")
        return pi
    }()
    
}
