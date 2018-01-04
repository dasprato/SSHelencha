//
//  ProjectsController.swift
//  SSHelencha
//
//  Created by Prato Das on 2018-01-03.
//  Copyright © 2018 Prato Das. All rights reserved.
//

import UIKit

class ProjectsController: UIViewController {
    
    
    var arrayOfProjecs = [Project]()
            var textToSet = NSMutableAttributedString()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.navigationController?.navigationBar.layer.shadowColor = UIColor.lightGray.cgColor
        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.navigationController?.navigationBar.layer.shadowOpacity = 1.0
        self.navigationController?.navigationBar.layer.masksToBounds = false
        self.navigationItem.title = "Projects"
        
        view.addSubview(projectsText)
        
        NSLayoutConstraint.activate([projectsText.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor), projectsText.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor), projectsText.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor), projectsText.bottomAnchor.constraint(equalTo: view.bottomAnchor)])
        populateArray()
        setupAllText()
    }
    
    func populateArray() {
        arrayOfProjecs.append(Project(projectTitle: "Shahjalal Fertilezer Plant\n", projectDescription: "Project name : Shahjalal Fertilizer Project of BCIC\nLoading Port：Chittagong, Mongla\nExecuted time：Starts September 2013 to October 2014.\nDetail Works:Transportation Cargo by Barge & Tug Boat from port to job site.\nSite Location: Kushiara River, Fenchuganj, Sylhet.\n\n"))
        
        
        arrayOfProjecs.append(Project(projectTitle: "Bhola 225 MW Power Plant Project\n", projectDescription: "Project name : Shahjalal Fertilizer Project of BCIC\nLoading Port：Chittagong, Mongla\nExecuted time：Starts September 2013 to October 2014.\nDetail Works:Transportation Cargo by Barge & Tug Boat from port to job site.\nSite Location: Kushiara River, Fenchuganj, Sylhet.\n\n"))
        
        arrayOfProjecs.append(Project(projectTitle: "Summit Bibiyana 341MW CCPP Project\n", projectDescription: "Project name : Shahjalal Fertilizer Project of BCIC\nLoading Port：Chittagong, Mongla\nExecuted time：Starts September 2013 to October 2014.\nDetail Works:Transportation Cargo by Barge & Tug Boat from port to job site.\nSite Location: Kushiara River, Fenchuganj, Sylhet.\n\n"))
        
        arrayOfProjecs.append(Project(projectTitle: "Summit Meghnaghat 337MW Power Plant\n", projectDescription: "Project name : Shahjalal Fertilizer Project of BCIC\nLoading Port：Chittagong, Mongla\nExecuted time：Starts September 2013 to October 2014.\nDetail Works:Transportation Cargo by Barge & Tug Boat from port to job site.\nSite Location: Kushiara River, Fenchuganj, Sylhet.\n\n"))
        
        arrayOfProjecs.append(Project(projectTitle: "Siddhirganj 335MW CCPP\n", projectDescription: "Project name : Shahjalal Fertilizer Project of BCIC\nLoading Port：Chittagong, Mongla\nExecuted time：Starts September 2013 to October 2014.\nDetail Works:Transportation Cargo by Barge & Tug Boat from port to job site.\nSite Location: Kushiara River, Fenchuganj, Sylhet.\n\n"))
        
        arrayOfProjecs.append(Project(projectTitle: "Ashuganj 450MW CCPP (South)\n", projectDescription: "Project name : Shahjalal Fertilizer Project of BCIC\nLoading Port：Chittagong, Mongla\nExecuted time：Starts September 2013 to October 2014.\nDetail Works:Transportation Cargo by Barge & Tug Boat from port to job site.\nSite Location: Kushiara River, Fenchuganj, Sylhet.\n\n"))
        
        
        //////
        //////
        //////
        //////
        
        arrayOfProjecs.append(Project(projectTitle: "Khalishpur,Khulna 75 (Additional) MW PPP\n", projectDescription: "Project name : Shahjalal Fertilizer Project of BCIC\nLoading Port：Chittagong, Mongla\nExecuted time：Starts September 2013 to October 2014.\nDetail Works:Transportation Cargo by Barge & Tug Boat from port to job site.\nSite Location: Kushiara River, Fenchuganj, Sylhet.\n\n"))
        
        arrayOfProjecs.append(Project(projectTitle: "Barisal 165 MW PPP\n", projectDescription: "Project name : Shahjalal Fertilizer Project of BCIC\nLoading Port：Chittagong, Mongla\nExecuted time：Starts September 2013 to October 2014.\nDetail Works:Transportation Cargo by Barge & Tug Boat from port to job site.\nSite Location: Kushiara River, Fenchuganj, Sylhet.\n\n"))
        
        arrayOfProjecs.append(Project(projectTitle: "Ashulia Power Plant\n", projectDescription: "Project name : Shahjalal Fertilizer Project of BCIC\nLoading Port：Chittagong, Mongla\nExecuted time：Starts September 2013 to October 2014.\nDetail Works:Transportation Cargo by Barge & Tug Boat from port to job site.\nSite Location: Kushiara River, Fenchuganj, Sylhet.\n\n"))
        
        arrayOfProjecs.append(Project(projectTitle: "Madangonj 102 MW Power Plant\n", projectDescription: "Project name : Shahjalal Fertilizer Project of BCIC\nLoading Port：Chittagong, Mongla\nExecuted time：Starts September 2013 to October 2014.\nDetail Works:Transportation Cargo by Barge & Tug Boat from port to job site.\nSite Location: Kushiara River, Fenchuganj, Sylhet.\n\n"))
        
        
        arrayOfProjecs.append(Project(projectTitle: "Bharamara 360 MW PPP\n", projectDescription: "Project name : Shahjalal Fertilizer Project of BCIC\nLoading Port：Chittagong, Mongla\nExecuted time：Starts September 2013 to October 2014.\nDetail Works:Transportation Cargo by Barge & Tug Boat from port to job site.\nSite Location: Kushiara River, Fenchuganj, Sylhet.\n\n"))
        
        arrayOfProjecs.append(Project(projectTitle: "Shikallbaha 225MW PPP\n", projectDescription: "Project name : Shahjalal Fertilizer Project of BCIC\nLoading Port：Chittagong, Mongla\nExecuted time：Starts September 2013 to October 2014.\nDetail Works:Transportation Cargo by Barge & Tug Boat from port to job site.\nSite Location: Kushiara River, Fenchuganj, Sylhet.\n\n"))
        
        
        arrayOfProjecs.append(Project(projectTitle: "Olympic Cement Limited\n", projectDescription: "Project name : Shahjalal Fertilizer Project of BCIC\nLoading Port：Chittagong, Mongla\nExecuted time：Starts September 2013 to October 2014.\nDetail Works:Transportation Cargo by Barge & Tug Boat from port to job site.\nSite Location: Kushiara River, Fenchuganj, Sylhet.\n\n"))
        
        arrayOfProjecs.append(Project(projectTitle: "Anwar Cement Limited\n", projectDescription: "Project name : Shahjalal Fertilizer Project of BCIC\nLoading Port：Chittagong, Mongla\nExecuted time：Starts September 2013 to October 2014.\nDetail Works:Transportation Cargo by Barge & Tug Boat from port to job site.\nSite Location: Kushiara River, Fenchuganj, Sylhet.\n\n"))
        
        
        arrayOfProjecs.append(Project(projectTitle: "T. K. Group of Industries (Super Formica and Lamination Limited)\n", projectDescription: "Project name : Shahjalal Fertilizer Project of BCIC\nLoading Port：Chittagong, Mongla\nExecuted time：Starts September 2013 to October 2014.\nDetail Works:Transportation Cargo by Barge & Tug Boat from port to job site.\nSite Location: Kushiara River, Fenchuganj, Sylhet.\n\n"))
        
        arrayOfProjecs.append(Project(projectTitle: "T. K. Group of Industries (Super Petrochemical Limited)\n", projectDescription: "Project name : Shahjalal Fertilizer Project of BCIC\nLoading Port：Chittagong, Mongla\nExecuted time：Starts September 2013 to October 2014.\nDetail Works:Transportation Cargo by Barge & Tug Boat from port to job site.\nSite Location: Kushiara River, Fenchuganj, Sylhet.\n\n"))
        
        
        arrayOfProjecs.append(Project(projectTitle: "Power Grid Company of Bangladesh & Padma Dredging CO.\n", projectDescription: "Project name : Shahjalal Fertilizer Project of BCIC\nLoading Port：Chittagong, Mongla\nExecuted time：Starts September 2013 to October 2014.\nDetail Works:Transportation Cargo by Barge & Tug Boat from port to job site.\nSite Location: Kushiara River, Fenchuganj, Sylhet.\n\n"))
        
        arrayOfProjecs.append(Project(projectTitle: "Maghna Group of Industries (Fresh Cement Ltd)\n", projectDescription: "Project name : Shahjalal Fertilizer Project of BCIC\nLoading Port：Chittagong, Mongla\nExecuted time：Starts September 2013 to October 2014.\nDetail Works:Transportation Cargo by Barge & Tug Boat from port to job site.\nSite Location: Kushiara River, Fenchuganj, Sylhet.\n\n"))
        
        
        arrayOfProjecs.append(Project(projectTitle: "Kushiara Power Company Ltd.\n", projectDescription: "Project name : Shahjalal Fertilizer Project of BCIC\nLoading Port：Chittagong, Mongla\nExecuted time：Starts September 2013 to October 2014.\nDetail Works:Transportation Cargo by Barge & Tug Boat from port to job site.\nSite Location: Kushiara River, Fenchuganj, Sylhet.\n\n"))
        
        arrayOfProjecs.append(Project(projectTitle: "Chapainawabganj Power Plant(PDB)\n", projectDescription: "Project name : Shahjalal Fertilizer Project of BCIC\nLoading Port：Chittagong, Mongla\nExecuted time：Starts September 2013 to October 2014.\nDetail Works:Transportation Cargo by Barge & Tug Boat from port to job site.\nSite Location: Kushiara River, Fenchuganj, Sylhet.\n\n"))
        
        
    }
    
    func setupAllText() {
        for i in 0..<self.arrayOfProjecs.count {
            setupText(projectTitle: arrayOfProjecs[i].projectTitle!, projectDescription: arrayOfProjecs[i].projectDescription!)
        }
    }
    
    
    func setupText(projectTitle: String, projectDescription: String) {

        let attributedText = NSMutableAttributedString(string: projectTitle, attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 18), NSAttributedStringKey.foregroundColor: UIColor.darkGray])
        let attributedTextDescripton = NSMutableAttributedString(string: projectDescription, attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor.lightGray])
        textToSet.append(attributedText)
        textToSet.append(attributedTextDescripton)
        projectsText.attributedText = textToSet
    }
    
    
    private var projectsText: UITextView = {
        let pt = UITextView()
        pt.translatesAutoresizingMaskIntoConstraints = false
        pt.textColor = UIColor.lightGray
        pt.isEditable = false
        pt.showsVerticalScrollIndicator = false
        return pt
    }()

}
