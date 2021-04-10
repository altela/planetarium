//
//  FirstViewController.swift
//  planetarium
//
//  Created by Altela Pramardhika on 13/07/20.
//  Copyright © 2020 projectflakes. All rights reserved.
//

import UIKit

class AboutController: UIViewController {


    @IBOutlet weak var logoApp: UIImageView!
    
    @IBOutlet weak var namaApp: UILabel!
    
    @IBOutlet weak var creatorApp: UILabel!
    
    @IBOutlet weak var versionApp: UILabel!
    
    @IBOutlet weak var toPlaneDetect: UIButton!
    
    @IBOutlet weak var toExit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func toPlaneDetectionAction(_ sender: Any) {
        performSegue(withIdentifier: "toPlaneDetectionSegue", sender: self)
            print("Plane Detection Button Pressed")
}
    
    @IBAction func toExitAction(_ sender: UIButton) {
        UIControl().sendAction(#selector(URLSessionTask.suspend), to: UIApplication.shared, for: nil)

    }
}

