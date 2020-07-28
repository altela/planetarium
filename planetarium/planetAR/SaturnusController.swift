//
//  SaturnusController.swift
//  planetarium
//
//  Created by Altela Pramardhika on 13/07/20.
//  Copyright © 2020 projectflakes. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class SaturnusController: UIViewController, ARSCNViewDelegate {

@IBOutlet var sceneSaturnus: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Atur Properti Delegasi Untuk Run Ke Self Controller
        sceneSaturnus.delegate = self
        
        // Deklarasi Properti Material Tulisan Untuk Saturnus
        let materialFontSaturnus = SCNMaterial()
        let textSaturnus = SCNText(string:
                "Saturnus (Saturn)\nStruktur : Hydrogen & Helium\nSuhu : -178° Derajat Celcius\nJarak Dari Bumi : 1.3428 Milyar Km Dari Bumi\nRotasi : 10.8 Jam Waktu Bumi\nRevolusi : 10752 Hari Bumi"
            , extrusionDepth: 1)
        materialFontSaturnus.diffuse.contents = UIImage(named: "textures.scnassets/saturn.jpg")
        textSaturnus.materials = [materialFontSaturnus]

        // Deklarasi Properti Sphere Planet Saturnus
        let saturnusSphere = SCNSphere(radius:0.2)
        let saturnusMaterial = SCNMaterial()
        saturnusMaterial.diffuse.contents = UIImage(named: "textures.scnassets/saturn.jpg")

        saturnusSphere.materials = [saturnusMaterial]
        
        let SaturnusRingTube = SCNTube(innerRadius: 0.25, outerRadius: 0.4, height: 0.01)
        
        // Deklarasi Properti Ring Planet Saturnus
        let saturnusRingMaterial = SCNMaterial()
        saturnusRingMaterial.diffuse.contents = UIImage(named: "textures.scnassets/saturnring.jpg")
        
        SaturnusRingTube.materials = [saturnusRingMaterial]

        // Deklarasi Node Untuk Menampilkan Text Pada AR
        let nodeSaturnusText = SCNNode()
        nodeSaturnusText.position = SCNVector3(x: 0.1, y: -0.1, z: -0.9)
        nodeSaturnusText.scale = SCNVector3(x: 0.008, y: 0.008, z: 0.01)
        nodeSaturnusText.geometry = textSaturnus

        sceneSaturnus.scene.rootNode.addChildNode(nodeSaturnusText)
        sceneSaturnus.autoenablesDefaultLighting = false

        // Deklarasi Node Untuk Menampilkan Planet Pada AR

        let nodeSaturnus = SCNNode()
        nodeSaturnus.position = SCNVector3(x: -0.3, y: 0.1, z: -0.7)
        nodeSaturnus.geometry = saturnusSphere
        
        
        sceneSaturnus.scene.rootNode.addChildNode(nodeSaturnus)
        sceneSaturnus.autoenablesDefaultLighting = true
        
        // Deklarasi Node Untuk Menampilkan Ring Planet Pada AR
        
        let nodeSaturnusRing = SCNNode()
        nodeSaturnusRing.position = SCNVector3(x: -0.3, y: 0.1, z: -0.7)
        nodeSaturnusRing.geometry = SaturnusRingTube

        sceneSaturnus.scene.rootNode.addChildNode(nodeSaturnusRing)
        sceneSaturnus.autoenablesDefaultLighting = false
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // Atur Session Configuration Dengan ARWorldTrackingConfiguration Agar Objek Statis
        let configuration = ARWorldTrackingConfiguration()
        
        // Setup Agar Session Menggunakan Plane Detection Horizontal Surface
        configuration.planeDetection = .horizontal

        // Jalankan Session
        sceneSaturnus.session.run(configuration)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Pause Session
        sceneSaturnus.session.pause()
    }

}

        // Deklarasi Properti Torus untuk Ring Saturnus
//        let saturnusRingTorus = SCNTorus(ringRadius: 0.1, pipeRadius: 0.2)
//        saturnusRingTorus.ringSegmentCount = 2
//        saturnusRingTorus.materials = [saturnusRingMaterial]
//        nodeSaturnusRing.geometry = saturnusRingTorus
