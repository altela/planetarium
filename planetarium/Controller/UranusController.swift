//
//  UranusController.swift
//  planetarium
//
//  Created by Altela Pramardhika on 13/07/20.
//  Copyright © 2020 projectflakes. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class UranusController: UIViewController, ARSCNViewDelegate {

@IBOutlet var sceneUranus: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Atur Properti Delegasi Untuk Run Ke Self Controller
        sceneUranus.delegate = self
        
        // Deklarasi Properti Material Tulisan Untuk merkurius
        let materialFontUranus = SCNMaterial()
        let textUranus = SCNText(string:
                "Uranus (Uranus)\nStruktur : Air, Metana, Amonia\nSuhu : -224° Derajat Celcius\nJarak Dari Bumi : 2.98 Milyar Km Dari Bumi\nRotasi : 17.28 Jam Waktu Bumi\nRevolusi : 30,663 Hari Bumi"
            , extrusionDepth: 1)
        materialFontUranus.diffuse.contents = UIImage(named: "textures.scnassets/uranus.jpg")
        textUranus.materials = [materialFontUranus]

        // Deklarasi Properti Sphere Planet merkurius
        let uranusSphere = SCNSphere(radius:0.2)
        let uranusMaterial = SCNMaterial()
        uranusMaterial.diffuse.contents = UIImage(named: "textures.scnassets/uranus.jpg")

        uranusSphere.materials = [uranusMaterial]

        // Deklarasi Node Untuk Menampilkan Text Pada AR
        let nodeUranusText = SCNNode()
        nodeUranusText.position = SCNVector3(x: 0.1, y: -0.1, z: -0.9)
        nodeUranusText.scale = SCNVector3(x: 0.008, y: 0.008, z: 0.01)
        nodeUranusText.geometry = textUranus

        sceneUranus.scene.rootNode.addChildNode(nodeUranusText)
        sceneUranus.autoenablesDefaultLighting = true

        // Deklarasi Node Untuk Menampilkan Planet Pada AR

        let nodeUranus = SCNNode()
        nodeUranus.position = SCNVector3(x: -0.3, y: 0.1, z: -0.7)
        nodeUranus.geometry = uranusSphere

        sceneUranus.scene.rootNode.addChildNode(nodeUranus)
        sceneUranus.autoenablesDefaultLighting = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // Atur Session Configuration Dengan ARWorldTrackingConfiguration Agar Objek Statis
        let configuration = ARWorldTrackingConfiguration()
        
        // Setup Agar Session Menggunakan Plane Detection Horizontal Surface
        configuration.planeDetection = .horizontal

        // Jalankan Session
        sceneUranus.session.run(configuration)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Pause Session
        sceneUranus.session.pause()
    }

}
