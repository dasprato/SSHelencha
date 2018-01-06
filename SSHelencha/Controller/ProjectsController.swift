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
        arrayOfProjecs.append(Project(projectTitle: "Bhola 225 MW Power Plant Project\n", projectDescription: "Project name: BHOLA 225MW+15PCT/-15PCT\nTotal CBM: 30,000\nExecuted time: 2014\nLoading Port: Chittagong, Mongla\nDetail Works: Transportation Cargo by Barge & Tug Boat from job site.\nSite Location: Borhanuddin, Bhola.\n\n"))
        arrayOfProjecs.append(Project(projectTitle: "Summit Bibiyana 341MW CCPP Project\n", projectDescription: "Project Name: Summit Bibiyana 341MW CCPP Project.\nTotal CBM: 60,000\nLoading Port: Mongla.\nWorks: Transportation Cargo by Barge & Tug Boat from port to job site.\nHeaviest Cargo: Crawler Crane 222 Tons\nExecuted time: 2013\nSite Location: Sylhet\n\n"))
        arrayOfProjecs.append(Project(projectTitle: "Summit Meghnaghat 337MW Power Plant\n", projectDescription: "Project Name: Summit Meghnaghat 337MW Power Plant\nTotal CBM: 60,000\nLoading Port: Mongla.\nDetail Works Transportation Cargo by Barge & Tug Boat from port to job site.\nHeaviest Cargo: Max Cargo 270 Ton GT, 275 Ton Generator\nExecuted time: 2013\nSite Location: Meghnaghat, Narayanganj.\n\n"))
        arrayOfProjecs.append(Project(projectTitle: "Siddhirganj 335MW CCPP\n", projectDescription: "Project Name: Siddhirganj 335MW CCPP\nTotal CBM: 60,000\nLoading Port: Mongla.\nDetail Works: Transportation Cargo by Barge & Tug Boat from port to job site.\nHeaviest Cargo: Generator 380, Ton/GT 305 Tons, Steam Turbine 200 Tons\nExecuted time: 2014\nSite Location: Siddhirganj, Narayanganj\n\n"))
        arrayOfProjecs.append(Project(projectTitle: "Ashuganj 450MW CCPP (South)\n", projectDescription: "Project Name: Ashuganj 450MW CCPP (South)\nTotal CBM: 60,000.\nLoading Port: Mongla.\nDetail Works: Transportation Cargo by Barge & Tug Boat from port to job site.\nHeaviest Cargo: Generator 380, Ton/GT 305 Tons, Steam Turbine 200 Tons\nExecuted time: 2014\nSite Location: Ashuganj.\n\n"))
        arrayOfProjecs.append(Project(projectTitle: "Khalishpur,Khulna 75 (Additional) MW PPP\n", projectDescription: "Project Name: Khalishpur,Khulna 75 (Additional) MW PPP.\nTotal CBM: 10,000\nLoading Port: Mongla\nDetail Works: Transportation Cargo by Barge & Tug Boat from port to job site.\nHeaviest Cargo: 102 MT, 160 MT, 186 MT, 240 MT, 300 MT.\nExecuted time: 2015\nSite Location: Khalishpur, Khulna.\n\n"))
        arrayOfProjecs.append(Project(projectTitle: "Barisal 165 MW PPP\n", projectDescription: "Project Name:Barisal 165 MW PPP/nTotal CBM: 22,000/nLoading Port: Mongla./nDetail Works: Transportation Cargo by Barge & Tug Boat from port to job site./nHeaviest Cargo: 287 MT/nExecuted time: 2015/nSite Location: Dopdopia, Barisal.\n\n"))
        arrayOfProjecs.append(Project(projectTitle: "Ashulia Power Plant\n", projectDescription: "Project Name: Ashulia Power Plant.\nTotal CBM: 6,000\nLoading Port: Mongla/ Chittagong.\nDetail Works: Transportation Cargo by Barge & Tug Boat from port to job site.\nHeaviest Cargo: 168 MT,\nExecuted time: 2015\nSite Location: Ashulia, Dhaka.\n\n"))
        arrayOfProjecs.append(Project(projectTitle: "Madangonj 102 MW Power Plant\n", projectDescription: "Project Name: Madangonj 102 MW Power Plant\nTotal CBM: 14,000.\nLoading Port: Mongla.\nDetail Works: Transportation Cargo by Barge & Tug Boat from port to job site.\nHeaviest Cargo: 287 MT,\nExecuted time: 2015\nSite Location: Madangonj, Narayangonj, Dhaka.\n\n"))
        arrayOfProjecs.append(Project(projectTitle: "Bharamara 360 MW PPP\n", projectDescription: "Project Name: Bharamara 360 MW PPP\nTotal CBM: 48,000.\nLoading Port: Mongla.\nDetail Works: Transportation Cargo by Barge & Tug Boat from port to job site.\nExecuted time: 2015\nSite Location: Bharamara, Kuestia.\n\n"))
        arrayOfProjecs.append(Project(projectTitle: "Shikallbaha 225MW PPP\n", projectDescription: "Project Name: Shikalbaha MW PPP\nTotal CBM: 30,000.\nLoading Port: Chittagong.\nDetail Works: Transportation Cargo by Barge & Tug Boat from port to job site.\nHeaviest Cargo: 180 MT, 225MT\nExecuted time: 2015\nSite Location: Shikalbaha, Chittagong.\n\n"))
        arrayOfProjecs.append(Project(projectTitle: "Olympic Cement Limited\n", projectDescription: "Project Name: 1600 MT Production Unit per Day.\nLoading Port: Chittagong.\nDetail Works: Transportation Cargo by Barge & Tug Boat from port to job site.\nHeaviest Cargo: 220 MT Ball Mall,\nExecuted time: 2014.\nSite Location: Rupatoli, Barisal.\n\n"))
        arrayOfProjecs.append(Project(projectTitle: "Anwar Cement Limited\n", projectDescription: "Professional Cement Mill,Production Capacity: 6.5-135t/h.\nLoading Port: Chittagong.\nDetail Works: Transportation Cargo by Barge & Tug Boat from port to job site.\nHeaviest Cargo: 70 MT, Standard Accessories For Cement Industry.\nExecuted time: 2016.\nSite Location: Chanchpur, Narayangonj.\n\n"))
        arrayOfProjecs.append(Project(projectTitle: "T. K. Group of Industries (Super Formica and Lamination Limited)\n", projectDescription: "Loading Port: Chittagong.\nDetail Works: Transportation Cargo by Barge & Tug Boat from port to job site.\nHeaviest Cargo: 68 MT Heavy Ball Mall .\nExecuted time: 2016.\nSite Location: Sikirganj, Gazaria, Munshiganj, Bangladesh\n\n"))
        arrayOfProjecs.append(Project(projectTitle: "T. K. Group of Industries (Super Petrochemical Limited)\n", projectDescription: "Loading Port: Chittagong.\nDetail Works: Transportation Cargo by Barge & Tug Boat from port to job site & unload those cargo by floating crane.\nHeaviest Cargo: 42 MT Heavy Drying Machine.\nExecuted time: 2016.\nSite Location: Dangarchar,Karnaphuli, Chittagong, Bangladesh\n\n"))
        arrayOfProjecs.append(Project(projectTitle: "Power Grid Company of Bangladesh & Padma Dredging CO.\n", projectDescription: "Loading Port: Chittagong.\nDetail Works: Transportation Cargo by Self Profiled Barge from port to job site.\nHeaviest Cargo: 85 MT Heavy Cargo.\nExecuted time: 2016.\nSite Location: Gazaria, Munshiganj, Bangladesh\n\n"))
        
        
        
        arrayOfProjecs.append(Project(projectTitle: "Maghna Group of Industries (Fresh Cement Ltd)\n", projectDescription: "Loading Port: Chittagong.\nDetail Works: Transportation Cargo by Barge & Tug Boat from port to job site.\nHeaviest Cargo: 68 MT Heavy Ball Mall.\nExecuted time: 2016.\nSite Location: Meghna Ghat, Narayanganj, Bangladesh\n\n"))
        
        
        arrayOfProjecs.append(Project(projectTitle: "Kushiara Power Company Ltd.\n", projectDescription: "Project Name: Kushiara 163 MW PPP (MAX Group)\nTotal CBM: 21,000\nLoading Port: Chittagong & Mongla\nDetail Works: Transportation Cargo by Barge & Tug Boat from port to job site.\nHeaviest Cargo: 200 MT.\nExecuted time: 2016\nSite Location: Kushiara River, Fenchuganj, Sylhet.\n\n"))
        
        arrayOfProjecs.append(Project(projectTitle: "Chapainawabganj Power Plant(PDB)\n", projectDescription: "Project Name: Chapainawabganj 100 MW PDB Power Plant.\nTotal CBM: 23,000\nLoading Port: Chittagong & Mongla.\nDetail Works: Transportation Cargo by Barge & Tug Boat from port to job site.\nHeaviest Cargo: 135 MT\nExecuted time: 2016\nSite Location: Amnora, Chapainawabganj, Rajshahi.\n\n"))
        
        
    }
    
    func setupAllText() {
        for i in 0..<self.arrayOfProjecs.count {
            setupText(projectTitle: arrayOfProjecs[i].projectTitle!, projectDescription: arrayOfProjecs[i].projectDescription!)
        }
    }
    
    
    func setupText(projectTitle: String, projectDescription: String) {

        let attributedText = NSMutableAttributedString(string: projectTitle, attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor.darkGray])
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
