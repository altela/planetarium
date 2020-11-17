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

class PlanetController: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet var planetView: ARSCNView!
    
    let planetModel = PlanetModel()
    let planetDescription = PlanetDescription()
    let planetNodes = PlanetNodes()
    let descriptionNodes = DescriptionNodes()
    var choosenPlanet: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        planetView.delegate = self
        
        // Text Material
        let text = planetModel.material
        let description = SCNText(string: planetDescription.description[choosenPlanet], extrusionDepth: 1)
        text.diffuse.contents = UIImage(named: planetDescription.textures[choosenPlanet]!)
        description.materials = [text]

        // Sphere Material
        let shape = planetModel.sphere
        let material = planetModel.material
        shape.materials = [material]
        material.diffuse.contents = UIImage(named: planetModel.textures[choosenPlanet]!)

        // Node Declaration
        let textSpawn = descriptionNodes.nodes
        textSpawn.position = descriptionNodes.position
        textSpawn.scale = descriptionNodes.scale
        textSpawn.geometry = description
        planetView.scene.rootNode.addChildNode(textSpawn)
        planetView.autoenablesDefaultLighting = true

        // Deklarasi Node Untuk Menampilkan Planet Pada AR
        let planetSpawn = planetNodes.nodes
        planetSpawn.position = planetNodes.position
        planetSpawn.geometry = shape
        planetView.scene.rootNode.addChildNode(planetSpawn)
        planetView.autoenablesDefaultLighting = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // Atur Session Configuration Dengan ARWorldTrackingConfiguration Agar Objek Statis
        let configuration = ARWorldTrackingConfiguration()
        
        // Setup Agar Session Menggunakan Plane Detection Horizontal Surface
        configuration.planeDetection = .horizontal

        // Jalankan Session
        planetView.session.run(configuration)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Pause Session
        planetView.session.pause()
    }
}
