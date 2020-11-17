//
//  MarsController.swift
//  planetarium
//
//  Created by Altela Pramardhika on 13/07/20.
//  Copyright © 2020 projectflakes. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class MarsController: UIViewController, ARSCNViewDelegate {
    
@IBOutlet var sceneMars: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Atur Properti Delegasi Untuk Run Ke Self Controller
        sceneMars.delegate = self
        
        // Deklarasi Properti Material Tulisan Untuk merkurius
        let materialFontMars = SCNMaterial()
        let textMars = SCNText(string:
                "Mars (Mars)\nStruktur : Nikel, Besi, Sulfur\nSuhu : 20°C (Siang) -73°C(Malam)\nJarak Dari Bumi : 110.76 Juta Km\nRotasi : 24.6 Jam Bumi\nRevolusi : 687 Hari Bumi"
            , extrusionDepth: 1)
        materialFontMars.diffuse.contents = UIImage(named: "textures.scnassets/mars.jpg")
        textMars.materials = [materialFontMars]

        // Deklarasi Properti Sphere Planet merkurius
        let marsSphere = SCNSphere(radius:0.2)
        let marsMaterial = SCNMaterial()
        marsMaterial.diffuse.contents = UIImage(named: "textures.scnassets/mars.jpg")

        marsSphere.materials = [marsMaterial]

        // Deklarasi Node Untuk Menampilkan Text Pada AR
        let nodeMarsText = SCNNode()
        nodeMarsText.position = SCNVector3(x: 0.1, y: -0.1, z: -0.9)
        nodeMarsText.scale = SCNVector3(x: 0.008, y: 0.008, z: 0.01)
        nodeMarsText.geometry = textMars

        sceneMars.scene.rootNode.addChildNode(nodeMarsText)
        sceneMars.autoenablesDefaultLighting = true

        // Deklarasi Node Untuk Menampilkan Planet Pada AR

        let nodeMars = SCNNode()
        nodeMars.position = SCNVector3(x: -0.3, y: 0.1, z: -0.7)
        nodeMars.geometry = marsSphere

        sceneMars.scene.rootNode.addChildNode(nodeMars)
        sceneMars.autoenablesDefaultLighting = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // Atur Session Configuration Dengan ARWorldTrackingConfiguration Agar Objek Statis
        let configuration = ARWorldTrackingConfiguration()
        
        // Setup Agar Session Menggunakan Plane Detection Horizontal Surface
        configuration.planeDetection = .horizontal

        // Jalankan Session
        sceneMars.session.run(configuration)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Pause Session
        sceneMars.session.pause()
    }
}
