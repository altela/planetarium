//
//  MatahariController.swift
//  planetarium
//
//  Created by Altela Pramardhika on 13/07/20.
//  Copyright © 2020 projectflakes. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class MatahariController: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet var sceneMatahari: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Atur Properti Delegasi Untuk Run Ke Self Controller
        sceneMatahari.delegate = self
        
        // Deklarasi Properti Material Tulisan Untuk Matahari
        let materialFontMatahari = SCNMaterial()
        let textMatahari = SCNText(string:
                "Matahari (Sun)\nStruktur : Plasma Hydrogen & Helium\nSuhu : 5,505°C\nJarak Dari Bumi : 152.06 Juta Km\nRotasi : 27 Hari Bumi"
            , extrusionDepth: 1)
        materialFontMatahari.diffuse.contents = UIImage(named: "textures.scnassets/sun.jpg")

        textMatahari.materials = [materialFontMatahari]

        // Deklarasi Properti Sphere Planet Matahari
        let matahariSphere = SCNSphere(radius:0.2)
        let matahariMaterial = SCNMaterial()
        matahariMaterial.diffuse.contents = UIImage(named: "textures.scnassets/sun.jpg")

        matahariSphere.materials = [matahariMaterial]

        // Deklarasi Node Untuk Menampilkan Text Pada AR
        let nodeMatahariText = SCNNode()
        nodeMatahariText.position = SCNVector3(x: 0.1, y: -0.1, z: -0.9)
        nodeMatahariText.scale = SCNVector3(x: 0.008, y: 0.008, z: 0.01)
        nodeMatahariText.geometry = textMatahari

        sceneMatahari.scene.rootNode.addChildNode(nodeMatahariText)
        sceneMatahari.autoenablesDefaultLighting = true

        // Deklarasi Node Untuk Menampilkan Planet Pada AR

        let nodeMatahari = SCNNode()
        nodeMatahari.position = SCNVector3(x: -0.3, y: 0.1, z: -0.7)
        nodeMatahari.geometry = matahariSphere

        sceneMatahari.scene.rootNode.addChildNode(nodeMatahari)
        sceneMatahari.autoenablesDefaultLighting = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // Atur Session Configuration Dengan ARWorldTrackingConfiguration Agar Objek Statis
        let configuration = ARWorldTrackingConfiguration()
        
        // Setup Agar Session Menggunakan Plane Detection Horizontal Surface
        configuration.planeDetection = .horizontal

        // Jalankan Session
        sceneMatahari.session.run(configuration)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Pause Session
        sceneMatahari.session.pause()
    }
}
