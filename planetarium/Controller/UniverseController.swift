//
//  UniverseController.swift
//  planetarium
//
//  Created by Altela Pramardhika on 28/11/20.
//  Copyright © 2020 projectflakes. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class UniverseController: UIViewController, ARSCNViewDelegate {

    let universe = Universe()
    let planetModel = PlanetModel()
    
    @IBOutlet weak var universeView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        universeView.delegate = self
        
        // Sphere Materials
        let shape = planetModel.sphere
        let material = planetModel.material
        shape.materials = [material]
        material.diffuse.contents = UIImage(named: planetModel.textures["sun"]!)
        material.diffuse.contents = UIImage(named: planetModel.textures["mercury"]!)
        material.diffuse.contents = UIImage(named: planetModel.textures["venus"]!)
        material.diffuse.contents = UIImage(named: planetModel.textures["earth"]!)
        material.diffuse.contents = UIImage(named: planetModel.textures["mars"]!)
        material.diffuse.contents = UIImage(named: planetModel.textures["jupiter"]!)
        material.diffuse.contents = UIImage(named: planetModel.textures["saturn"]!)
        material.diffuse.contents = UIImage(named: planetModel.textures["uranus"]!)
        material.diffuse.contents = UIImage(named: planetModel.textures["neptune"]!)
        
        // Node Declarations
        let sunSpawn = universe.nodes
        sunSpawn.position = universe.sunPosition
        sunSpawn.geometry = shape
        universeView.scene.rootNode.addChildNode(sunSpawn)
        universeView.autoenablesDefaultLighting = true
    }
}
