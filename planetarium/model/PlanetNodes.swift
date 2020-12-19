//
//  Nodes.swift
//  planetarium
//
//  Created by Altela Pramardhika on 17/11/20.
//  Copyright © 2020 projectflakes. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

struct PlanetNodes {
    let nodes = SCNNode()
    let position = SCNVector3(-0.3, 0.1, -0.7)
}

struct DescriptionNodes{
    let nodes = SCNNode()
    let position = SCNVector3(0.1, -0.1, -0.9)
    let scale = SCNVector3(0.008, 0.008, 0.01)
}

struct UniverseNodes {
    let sun = SCNNode()
    let sunPosition = SCNVector3(-0.3, 0.0, -0.7)

    let mercury = SCNNode()
    let mercuryPosition = SCNVector3(-0.9, 0.0, -0.7)
    
    let venus = SCNNode()
    let venusPosition = SCNVector3(-1.1, 0.1, -0.7)

    let earth = SCNNode()
    let earthPosition = SCNVector3(-1.4, 0.1, -0.7)
    
    let mars = SCNNode()
    let marsPosition = SCNVector3(-1.6, 0.1, -0.7)
    
    let jupiter = SCNNode()
    let jupiterPosition = SCNVector3(-1.9, 0.1, -0.7)
    
    let saturn = SCNNode()
    let saturnPosition = SCNVector3(-2.3, 0.1, -0.7)
    
    let uranus = SCNNode()
    let uranusPosition = SCNVector3(-2.6, 0.1, -0.7)
    
    let neptune = SCNNode()
    let neptunePosition = SCNVector3(-2.9, 0.1, -0.7)
}
