//
//  UniverseController.swift
//  planetarium
//
//  Created by Altela Pramardhika on 28/11/20.
//  Copyright © 2020 projectflakes. All rights reserved.
//
//
//  UniverseController.swift
//  planetarium
//
//  Created by Altela Pramardhika on 19/12/20.
//  Copyright © 2020 projectflakes. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class UniverseController: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet weak var universeView: ARSCNView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        universeView.delegate = self
        let planetModel = PlanetModel()
        let universeModel = UniverseModel()
        let universeNode = UniverseNode()
        
        // Sun Shape & Nodes
        let sunShape = universeModel.sunSphere
        let sunMaterial = universeModel.sunMaterial
        sunShape.materials = [sunMaterial]
        sunMaterial.diffuse.contents = UIImage(named: planetModel.textures["sun"]!)

        let sunSpawn = universeNode.sunNode
        sunSpawn.position = universeNode.sunPosition
        sunSpawn.geometry = sunShape
        universeView.scene.rootNode.addChildNode(sunSpawn)
        universeView.autoenablesDefaultLighting = true

        // Mercury Shape & Nodes
        let mercuryShape = universeModel.mercurySphere
        let mercuryMaterial = universeModel.mercuryMaterial
        mercuryShape.materials = [mercuryMaterial]
        mercuryMaterial.diffuse.contents = UIImage(named: planetModel.textures["mercury"]!)

        let mercurySpawn = universeNode.mercuryNode
        mercurySpawn.position = universeNode.mercuryPosition
        mercurySpawn.geometry = mercuryShape
        universeView.scene.rootNode.addChildNode(mercurySpawn)
        universeView.autoenablesDefaultLighting = true

        // Venus Shape & Nodes
        let venusShape = universeModel.venusSphere
        let venusMaterial = universeModel.venusMaterial
        venusShape.materials = [venusMaterial]
        venusMaterial.diffuse.contents = UIImage(named: planetModel.textures["venus"]!)

        let venusSpawn = universeNode.venusNode
        venusSpawn.position = universeNode.venusPosition
        venusSpawn.geometry = venusShape
        universeView.scene.rootNode.addChildNode(venusSpawn)
        universeView.autoenablesDefaultLighting = true
        
        // Earth Shape & Nodes
        let earthShape = universeModel.earthSphere
        let earthMaterial = universeModel.earthMaterial
        earthShape.materials = [earthMaterial]
        earthMaterial.diffuse.contents = UIImage(named: planetModel.textures["earth"]!)

        let earthSpawn = universeNode.earthNode
        earthSpawn.position = universeNode.earthPosition
        earthSpawn.geometry = earthShape
        universeView.scene.rootNode.addChildNode(earthSpawn)
        universeView.autoenablesDefaultLighting = true
        
        // Mars Shape & Nodes
        let marsShape = universeModel.marsSphere
        let marsMaterial = universeModel.marsMaterial
        marsShape.materials = [marsMaterial]
        marsMaterial.diffuse.contents = UIImage(named: planetModel.textures["mars"]!)

        let marsSpawn = universeNode.marsNode
        marsSpawn.position = universeNode.marsPosition
        marsSpawn.geometry = marsShape
        universeView.scene.rootNode.addChildNode(marsSpawn)
        universeView.autoenablesDefaultLighting = true

        // Jupiter Shape & Nodes
        let jupiterShape = universeModel.jupiterSphere
        let jupiterMaterial = universeModel.jupiterMaterial
        jupiterShape.materials = [jupiterMaterial]
        jupiterMaterial.diffuse.contents = UIImage(named: planetModel.textures["jupiter"]!)

        let jupiterSpawn = universeNode.jupiterNode
        jupiterSpawn.position = universeNode.jupiterPosition
        jupiterSpawn.geometry = jupiterShape
        universeView.scene.rootNode.addChildNode(jupiterSpawn)
        universeView.autoenablesDefaultLighting = true
        
        // Saturn Shape & Nodes
        let saturnShape = universeModel.saturnSphere
        let saturnMaterial = universeModel.saturnMaterial
        saturnShape.materials = [saturnMaterial]
        saturnMaterial.diffuse.contents = UIImage(named: planetModel.textures["saturn"]!)

        let saturnSpawn = universeNode.saturnNode
        saturnSpawn.position = universeNode.saturnPosition
        saturnSpawn.geometry = saturnShape
        universeView.scene.rootNode.addChildNode(saturnSpawn)
        universeView.autoenablesDefaultLighting = true
        
        // Uranus Shape & Nodes
        let uranusShape = universeModel.uranusSphere
        let uranusMaterial = universeModel.uranusMaterial
        uranusShape.materials = [uranusMaterial]
        uranusMaterial.diffuse.contents = UIImage(named: planetModel.textures["uranus"]!)

        let uranusSpawn = universeNode.uranusNode
        uranusSpawn.position = universeNode.uranusPosition
        uranusSpawn.geometry = uranusShape
        universeView.scene.rootNode.addChildNode(uranusSpawn)
        universeView.autoenablesDefaultLighting = true
        
        // Neptune Shape & Nodes
        let neptuneShape = universeModel.neptuneSphere
        let neptuneMaterial = universeModel.neptuneMaterial
        neptuneShape.materials = [neptuneMaterial]
        neptuneMaterial.diffuse.contents = UIImage(named: planetModel.textures["neptune"]!)

        let neptuneSpawn = universeNode.neptuneNode
        neptuneSpawn.position = universeNode.neptunePosition
        neptuneSpawn.geometry = neptuneShape
        universeView.scene.rootNode.addChildNode(neptuneSpawn)
        universeView.autoenablesDefaultLighting = true
        
        // Set Session Configuration With ARWorldTrackingConfiguration To Be Able To Use World Tracking Feature
        let configuration = ARWorldTrackingConfiguration()
        
        
        // Set Session For Horizontal Surface Plane Detection
        configuration.planeDetection = .horizontal

        // Run Session
        universeView.session.run(configuration)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Pause Session
        universeView.session.pause()
    }
    
}
