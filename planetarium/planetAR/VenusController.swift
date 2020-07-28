//
//  VenusController.swift
//  planetarium
//
//  Created by Altela Pramardhika on 13/07/20.
//  Copyright © 2020 projectflakes. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class VenusController: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet var sceneVenus: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Atur Properti Delegasi Untuk Run Ke Self Controller
        sceneVenus.delegate = self
        
        // Deklarasi Properti Material Tulisan Untuk merkurius
        let materialFontVenus = SCNMaterial()
        let textVenus = SCNText(string:
                "Venus (Venus)\nStruktur : Besi Cair & Nickel\nSuhu : 460°C (Siang & Malam)\nJarak Dari Bumi : 72.536 Juta Km\nRotasi : 243 Hari Bumi\nRevolusi : 225 Hari Bumi"
            , extrusionDepth: 1)
        materialFontVenus.diffuse.contents = UIImage(named: "textures.scnassets/venus.jpg")
        textVenus.materials = [materialFontVenus]

        // Deklarasi Properti Sphere Planet merkurius
        let venusSphere = SCNSphere(radius:0.2)
        let venusMaterial = SCNMaterial()
        venusMaterial.diffuse.contents = UIImage(named: "textures.scnassets/venus.jpg")

        venusSphere.materials = [venusMaterial]

        // Deklarasi Node Untuk Menampilkan Text Pada AR
        let nodeVenusText = SCNNode()
        nodeVenusText.position = SCNVector3(x: 0.1, y: -0.1, z: -0.9)
        nodeVenusText.scale = SCNVector3(x: 0.008, y: 0.008, z: 0.01)
        nodeVenusText.geometry = textVenus

        sceneVenus.scene.rootNode.addChildNode(nodeVenusText)
        sceneVenus.autoenablesDefaultLighting = true

        // Deklarasi Node Untuk Menampilkan Planet Pada AR

        let nodeVenus = SCNNode()
        nodeVenus.position = SCNVector3(x: -0.3, y: 0.1, z: -0.7)
        nodeVenus.geometry = venusSphere

        sceneVenus.scene.rootNode.addChildNode(nodeVenus)
        sceneVenus.autoenablesDefaultLighting = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // Atur Session Configuration Dengan ARWorldTrackingConfiguration Agar Objek Statis
        let configuration = ARWorldTrackingConfiguration()
        
        // Setup Agar Session Menggunakan Plane Detection Horizontal Surface
        configuration.planeDetection = .horizontal

        // Jalankan Session
        sceneVenus.session.run(configuration)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Pause Session
        sceneVenus.session.pause()
    }
}
