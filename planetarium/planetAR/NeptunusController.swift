//
//  NeptunusController.swift
//  planetarium
//
//  Created by Altela Pramardhika on 13/07/20.
//  Copyright © 2020 projectflakes. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class NeptunusController: UIViewController, ARSCNViewDelegate {

@IBOutlet var sceneNeptunus: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Atur Properti Delegasi Untuk Run Ke Self Controller
        sceneNeptunus.delegate = self
        
        // Deklarasi Properti Material Tulisan Untuk merkurius
        let materialFontNeptunus = SCNMaterial()
        let textNeptunus = SCNText(string:
                "Neptunus (Neptune)\nStruktur : Air, Metana, Amonia\nSuhu : -200° Derajat Celcius\nJarak Dari Bumi : 4.38 Milyar Km Dari Bumi\nRotasi : 16.08 Jam Waktu Bumi\nRevolusi : 60,148 Hari Bumi"
            , extrusionDepth: 1)
        materialFontNeptunus.diffuse.contents = UIImage(named: "textures.scnassets/neptune.jpg")
        textNeptunus.materials = [materialFontNeptunus]

        // Deklarasi Properti Sphere Planet merkurius
        let neptunusSphere = SCNSphere(radius:0.2)
        let neptunusMaterial = SCNMaterial()
        neptunusMaterial.diffuse.contents = UIImage(named: "textures.scnassets/neptune.jpg")

        neptunusSphere.materials = [neptunusMaterial]

        // Deklarasi Node Untuk Menampilkan Text Pada AR
        let nodeNeptunusText = SCNNode()
        nodeNeptunusText.position = SCNVector3(x: 0.1, y: -0.1, z: -0.9)
        nodeNeptunusText.scale = SCNVector3(x: 0.008, y: 0.008, z: 0.01)
        nodeNeptunusText.geometry = textNeptunus

        sceneNeptunus.scene.rootNode.addChildNode(nodeNeptunusText)
        sceneNeptunus.autoenablesDefaultLighting = true

        // Deklarasi Node Untuk Menampilkan Planet Pada AR

        let nodeNeptunus = SCNNode()
        nodeNeptunus.position = SCNVector3(x: -0.3, y: 0.1, z: -0.7)
        nodeNeptunus.geometry = neptunusSphere

        sceneNeptunus.scene.rootNode.addChildNode(nodeNeptunus)
        sceneNeptunus.autoenablesDefaultLighting = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // Atur Session Configuration Dengan ARWorldTrackingConfiguration Agar Objek Statis
        let configuration = ARWorldTrackingConfiguration()
        
        // Setup Agar Session Menggunakan Plane Detection Horizontal Surface
        configuration.planeDetection = .horizontal

        // Jalankan Session
        sceneNeptunus.session.run(configuration)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Pause Session
        sceneNeptunus.session.pause()
    }

}
