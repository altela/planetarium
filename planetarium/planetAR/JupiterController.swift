//
//  JupiterController.swift
//  planetarium
//
//  Created by Altela Pramardhika on 13/07/20.
//  Copyright © 2020 projectflakes. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class JupiterController: UIViewController, ARSCNViewDelegate {

@IBOutlet var sceneJupiter: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Atur Properti Delegasi Untuk Run Ke Self Controller
        sceneJupiter.delegate = self
        
        // Deklarasi Properti Material Tulisan Untuk merkurius
        let materialFontJupiter = SCNMaterial()
        let textJupiter = SCNText(string:
                "Jupiter (Jupiter)\nStruktur : Hydrogen & Helium\nSuhu : -145° Derajat Celcius\nJarak Dari Bumi : 620,42 Juta Km Dari Bumi\nRotasi : 9,84 Jam Waktu Bumi\nRevolusi : 4328 Hari Bumi"
            , extrusionDepth: 1)
        materialFontJupiter.diffuse.contents = UIImage(named: "textures.scnassets/jupiter.jpg")
        textJupiter.materials = [materialFontJupiter]

        // Deklarasi Properti Sphere Planet merkurius
        let jupiterSphere = SCNSphere(radius:0.2)
        let jupiterMaterial = SCNMaterial()
        jupiterMaterial.diffuse.contents = UIImage(named: "textures.scnassets/jupiter.jpg")

        jupiterSphere.materials = [jupiterMaterial]

        // Deklarasi Node Untuk Menampilkan Text Pada AR
        let nodeJupiterText = SCNNode()
        nodeJupiterText.position = SCNVector3(x: 0.1, y: -0.1, z: -0.9)
        nodeJupiterText.scale = SCNVector3(x: 0.008, y: 0.008, z: 0.01)
        nodeJupiterText.geometry = textJupiter

        sceneJupiter.scene.rootNode.addChildNode(nodeJupiterText)
        sceneJupiter.autoenablesDefaultLighting = true

        // Deklarasi Node Untuk Menampilkan Planet Pada AR

        let nodeJupiter = SCNNode()
        nodeJupiter.position = SCNVector3(x: -0.3, y: 0.1, z: -0.7)
        nodeJupiter.geometry = jupiterSphere

        sceneJupiter.scene.rootNode.addChildNode(nodeJupiter)
        sceneJupiter.autoenablesDefaultLighting = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // Atur Session Configuration Dengan ARWorldTrackingConfiguration Agar Objek Statis
        let configuration = ARWorldTrackingConfiguration()
        
        // Setup Agar Session Menggunakan Plane Detection Horizontal Surface
        configuration.planeDetection = .horizontal

        // Jalankan Session
        sceneJupiter.session.run(configuration)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Pause Session
        sceneJupiter.session.pause()
    }

}
