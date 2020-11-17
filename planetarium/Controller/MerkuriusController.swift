//
//  MerkuriusController.swift
//  planetarium
//
//  Created by Altela Pramardhika on 13/07/20.
//  Copyright © 2020 projectflakes. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class MerkuriusController: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet var sceneMerkurius: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         // Atur Properti Delegasi Untuk Run Ke Self Controller
        sceneMerkurius.delegate = self
        
         // Deklarasi Properti Material Tulisan Untuk merkurius
        let materialFontMerkurius = SCNMaterial()
        let textMerkurius = SCNText(string:
                "Merkurius (Mercury)\nStruktur : Besi\nSuhu : 427°C (Siang) -180°C (Malam)\nJarak Dari Bumi : 106.24 Juta Km\nRotasi : 59 Hari Bumi\nRevolusi : 88 Hari Bumi"
            , extrusionDepth: 1)
        materialFontMerkurius.diffuse.contents = UIImage(named: "textures.scnassets/mercury.jpg")
        textMerkurius.materials = [materialFontMerkurius]

        // Deklarasi Properti Sphere Planet merkurius
        let merkuriusSphere = SCNSphere(radius:0.2)
        let merkuriusMaterial = SCNMaterial()
        merkuriusMaterial.diffuse.contents = UIImage(named: "textures.scnassets/mercury.jpg")

        merkuriusSphere.materials = [merkuriusMaterial]

        // Deklarasi Node Untuk Menampilkan Text Pada AR
        let nodeMerkuriusText = SCNNode()
        nodeMerkuriusText.position = SCNVector3(x: 0.1, y: -0.1, z: -0.9)
        nodeMerkuriusText.scale = SCNVector3(x: 0.008, y: 0.008, z: 0.01)
        nodeMerkuriusText.geometry = textMerkurius

        sceneMerkurius.scene.rootNode.addChildNode(nodeMerkuriusText)
        sceneMerkurius.autoenablesDefaultLighting = true

        // Deklarasi Node Untuk Menampilkan Planet Pada AR

        let nodeMerkurius = SCNNode()
        nodeMerkurius.position = SCNVector3(x: -0.3, y: 0.1, z: -0.7)
        nodeMerkurius.geometry = merkuriusSphere

        sceneMerkurius.scene.rootNode.addChildNode(nodeMerkurius)
        sceneMerkurius.autoenablesDefaultLighting = true
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // Atur Session Configuration Dengan ARWorldTrackingConfiguration Agar Objek Statis
        let configuration = ARWorldTrackingConfiguration()

        // Setup Agar Session Menggunakan Plane Detection Horizontal Surface
        configuration.planeDetection = .horizontal

        // Jalankan Session
        sceneMerkurius.session.run(configuration)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Pause Session
        sceneMerkurius.session.pause()
    }
}



