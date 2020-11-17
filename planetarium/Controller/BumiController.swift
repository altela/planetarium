//
//  BumiController.swift
//  planetarium
//
//  Created by Altela Pramardhika on 13/07/20.
//  Copyright © 2020 projectflakes. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class BumiController: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet var sceneBumi: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Atur Properti Delegasi Untuk Run Ke Self Controller
        sceneBumi.delegate = self
        
        // Deklarasi Properti Material Tulisan Untuk merkurius
        let materialFontBumi = SCNMaterial()
        let textBumi = SCNText(string:
                "Bumi (Earth)\nStruktur : Batu Basalt & Granite\nSuhu : 14.6°C\nRotasi : 24 Jam\nRevolusi : 365 Hari + 1 (Kabisat)"
            , extrusionDepth: 1)
        materialFontBumi.diffuse.contents = UIImage(named: "textures.scnassets/earth.jpg")
        textBumi.materials = [materialFontBumi]

        // Deklarasi Properti Sphere Planet merkurius
        let bumiSphere = SCNSphere(radius:0.2)
        let bumiMaterial = SCNMaterial()
        bumiMaterial.diffuse.contents = UIImage(named: "textures.scnassets/earth.jpg")

        bumiSphere.materials = [bumiMaterial]

        // Deklarasi Node Untuk Menampilkan Text Pada AR
        let nodeBumiText = SCNNode()
        nodeBumiText.position = SCNVector3(x: 0.1, y: -0.1, z: -0.9)
        nodeBumiText.scale = SCNVector3(x: 0.008, y: 0.008, z: 0.01)
        nodeBumiText.geometry = textBumi

        sceneBumi.scene.rootNode.addChildNode(nodeBumiText)
        sceneBumi.autoenablesDefaultLighting = true

        // Deklarasi Node Untuk Menampilkan Planet Pada AR

        let nodeBumi = SCNNode()
        nodeBumi.position = SCNVector3(x: -0.3, y: 0.1, z: -0.7)
        nodeBumi.geometry = bumiSphere

        sceneBumi.scene.rootNode.addChildNode(nodeBumi)
        sceneBumi.autoenablesDefaultLighting = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // Atur Session Configuration Dengan ARWorldTrackingConfiguration Agar Objek Statis
        let configuration = ARWorldTrackingConfiguration()
        
        // Setup Agar Session Menggunakan Plane Detection Horizontal Surface
        configuration.planeDetection = .horizontal

        // Jalankan Session
        sceneBumi.session.run(configuration)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Pause Session
        sceneBumi.session.pause()
    }
}
