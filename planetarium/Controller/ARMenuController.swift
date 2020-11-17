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
        
        self.performSegue(withIdentifier: "showARSegue", sender: sender)
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "showARSegue" {
        let vc = segue.destination as! PlanetController
           vc.choosenPlanet = (sender as! UIButton).titleLabel!.text!
       }
    }
}
    

