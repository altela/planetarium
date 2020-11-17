//
//  SecondViewController.swift
//  planetarium
//
//  Created by Altela Pramardhika on 13/07/20.
//  Copyright © 2020 projectflakes. All rights reserved.
//

import UIKit

class ARMenuController: UIViewController {

    @IBOutlet weak var showAR: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showAR(_ sender: UIButton!) {
        
        self.performSegue(withIdentifier: "toMatahariSegue", sender: sender)
        
//        switch sender.currentTitle {
//        case "sun":
//
//        case "mercury":
//            performSegue(withIdentifier: "toMerkuriusSegue", sender: self)
//            print("AR view of \(sender.currentTitle!) successfully executed")
//        case "venus":
//            performSegue(withIdentifier: "toVenusSegue", sender: self)
//            print("AR view of \(sender.currentTitle!) successfully executed")
//        case "earth":
//            performSegue(withIdentifier: "toBumiSegue", sender: self)
//            print("AR view of \(sender.currentTitle!) successfully executed")
//        case "mars":
//            performSegue(withIdentifier: "toMarsSegue", sender: self)
//            print("AR view of \(sender.currentTitle!) successfully executed")
//        case "jupiter":
//            performSegue(withIdentifier: "toJupiterSegue", sender: self)
//            print("AR view of \(sender.currentTitle!) successfully executed")
//        case "saturn":
//            performSegue(withIdentifier: "toSaturnusSegue", sender: self)
//            print("AR view of \(sender.currentTitle!) successfully executed")
//        case "uranus":
//            performSegue(withIdentifier: "toUranusSegue", sender: self)
//            print("AR view of \(sender.currentTitle!) successfully executed")
//        case "neptune":
//            performSegue(withIdentifier: "toNeptunusSegue", sender: self)
//            print("AR view of \(sender.currentTitle!) successfully executed")
//        default:
//            print("Not Available")
//        }
//    }
//
}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "toMatahariSegue" {
        let vc = segue.destination as! SunController
           vc.choosenPlanet = (sender as! UIButton).titleLabel!.text!
       }
    }
}
    

