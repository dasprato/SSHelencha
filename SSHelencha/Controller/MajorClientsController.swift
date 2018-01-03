//
//  MajorClientsController.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-03.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class MajorClientsController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.navigationController?.navigationBar.layer.shadowColor = UIColor.lightGray.cgColor
        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.navigationController?.navigationBar.layer.shadowOpacity = 1.0
        self.navigationController?.navigationBar.layer.masksToBounds = false
        self.navigationItem.title = "Major Clients"
        
        view.addSubview(imageView)
        NSLayoutConstraint.activate([imageView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor), imageView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor), imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8), imageView.heightAnchor.constraint(equalToConstant: view.frame.width * (2479/1880))])
        imageView.sd_setImage(with: URL(string: "http://sshelenchaltd.com/images/our-client.jpg"), placeholderImage: UIImage(), options: [.continueInBackground, .progressiveDownload])
    }
    
    private var imageView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFit
        iv.backgroundColor = UIColor.white
        return iv
    }()
}
