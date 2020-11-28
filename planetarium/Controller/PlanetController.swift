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

          // Node Declaration for planet description
          let textSpawn = descriptionNodes.nodes
          textSpawn.position = descriptionNodes.position
          textSpawn.scale = descriptionNodes.scale
          textSpawn.geometry = description
          planetView.scene.rootNode.addChildNode(textSpawn)
          planetView.autoenablesDefaultLighting = true

          // Node Declaration for planets
          let planetSpawn = planetNodes.nodes
          planetSpawn.position = planetNodes.position
          planetSpawn.geometry = shape
          planetView.scene.rootNode.addChildNode(planetSpawn)
          planetView.autoenablesDefaultLighting = true
      }
      
      override func viewWillAppear(_ animated: Bool) {
          super.viewWillAppear(animated)

          // Set Session Configuration With ARWorldTrackingConfiguration To Be Able To Use World Tracking Feature
          let configuration = ARWorldTrackingConfiguration()
          
          // Set Session For Horizontal Surface Plane Detection
          configuration.planeDetection = .horizontal

          // Run Session
          planetView.session.run(configuration)
      }

      override func viewWillDisappear(_ animated: Bool) {
          super.viewWillDisappear(animated)

          // Pause Session
          planetView.session.pause()
      }
  }
