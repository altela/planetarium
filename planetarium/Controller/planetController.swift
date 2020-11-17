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

class planetController: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet var sunView: ARSCNView!
    
    let planetModel = PlanetModel()
    let planetDescription = PlanetDescription()
    let planetNodes = PlanetNodes()
    let descriptionNodes = DescriptionNodes()
    var choosenPlanet: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        sunView.delegate = self
        
        // Text Material
        let sunText = planetModel.material
        let sunDescription = SCNText(string: planetDescription.description[choosenPlanet], extrusionDepth: 1)
        sunText.diffuse.contents = UIImage(named: planetDescription.textures[choosenPlanet]!)
        sunDescription.materials = [sunText]

        // Sphere Material
        let sunShape = planetModel.sphere
        let sunMaterial = planetModel.material
        sunShape.materials = [sunMaterial]
        sunMaterial.diffuse.contents = UIImage(named: planetModel.textures[choosenPlanet]!)


        // Node Declaration
        let sunDescriptionNodes = descriptionNodes.nodes
        sunDescriptionNodes.position = descriptionNodes.position
        sunDescriptionNodes.scale = descriptionNodes.scale
        sunDescriptionNodes.geometry = sunDescription
        sunView.scene.rootNode.addChildNode(sunDescriptionNodes)
        sunView.autoenablesDefaultLighting = true

        // Deklarasi Node Untuk Menampilkan Planet Pada AR
        let sunNodes = planetNodes.nodes
        sunNodes.position = planetNodes.position
        sunNodes.geometry = sunShape
        sunView.scene.rootNode.addChildNode(sunNodes)
        sunView.autoenablesDefaultLighting = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // Atur Session Configuration Dengan ARWorldTrackingConfiguration Agar Objek Statis
        let configuration = ARWorldTrackingConfiguration()
        
        // Setup Agar Session Menggunakan Plane Detection Horizontal Surface
        configuration.planeDetection = .horizontal

        // Jalankan Session
        sunView.session.run(configuration)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Pause Session
        sunView.session.pause()
    }
}
