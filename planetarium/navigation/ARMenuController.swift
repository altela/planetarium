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
        @IBOutlet weak var toMerkurius: UIButton!
            @IBOutlet weak var toVenus: UIButton!
                @IBOutlet weak var toBumi: UIButton!
                    @IBOutlet weak var toMars: UIButton!
                @IBOutlet weak var toJupiter: UIButton!
            @IBOutlet weak var toSaturnus: UIButton!
        @IBOutlet weak var toUranus: UIButton!
    @IBOutlet weak var toNeptunus: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func showAR(_ sender: UIButton) {
        print(sender.currentTitle!)
        
        switch sender.currentTitle {
        case "sun":
            performSegue(withIdentifier: "toMatahariSegue", sender: self)
        default:
            print("Not Available")
        }
    }
    
    @IBAction func toMerkuriusAction(_ sender: Any) {
        performSegue(withIdentifier: "toMerkuriusSegue", sender: self)
            print("Tombol Merkurius Ditekan")
    }
    
    @IBAction func toVenusAction(_ sender: Any) {
        performSegue(withIdentifier: "toVenusSegue", sender: self)
            print("Tombol Venus Ditekan")
    }
    
    @IBAction func toBumiAction(_ sender: Any) {
        performSegue(withIdentifier: "toBumiSegue", sender: self)
            print("Tombol Bumi Ditekan")
    }
    
    @IBAction func toMarsAction(_ sender: Any) {
        performSegue(withIdentifier: "toMarsSegue", sender: self)
            print("Tombol Mars Ditekan")
    }
    
    @IBAction func toJupiterAction(_ sender: Any) {
        performSegue(withIdentifier: "toJupiterSegue", sender: self)
            print("Tombol Jupiter Ditekan")
    }
    
    @IBAction func toSaturnusButton(_ sender: Any) {
        performSegue(withIdentifier: "toSaturnusSegue", sender: self)
            print("Tombol Saturnus Ditekan")
    }
    
    @IBAction func toUranusButton(_ sender: Any) {
        performSegue(withIdentifier: "toUranusSegue", sender: self)
            print("Tombol Uranus Ditekan")
    }
    
    @IBAction func toNeptunusButton(_ sender: Any) {
        performSegue(withIdentifier: "toNeptunusSegue", sender: self)
            print("Tombol Neptunus Ditekan")
    }
}

