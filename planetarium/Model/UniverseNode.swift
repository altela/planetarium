//
//  UniverseModel.swift
//  planetarium
//
//  Created by Altela Pramardhika on 06/04/21.
//  Copyright © 2021 projectflakes. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

struct UniverseNode {
    let sunNode = SCNNode()
    let sunPosition = SCNVector3(1, 0.0, -0.9)
    
    let mercuryNode = SCNNode()
    let mercuryPosition = SCNVector3(0.5, 0.0, -0.9)
    
    let venusNode = SCNNode()
    let venusPosition = SCNVector3(0.4, 0.0, -0.9)
    
    let earthNode = SCNNode()
    let earthPosition = SCNVector3(0.1, 0.0, -0.9)

    let marsNode = SCNNode()
    let marsPosition = SCNVector3(-0.1, 0.0, -0.9)
    
    let jupiterNode = SCNNode()
    let jupiterPosition = SCNVector3(-0.4, 0.0, -0.9)
    
    let saturnNode = SCNNode()
    let saturnPosition = SCNVector3(-0.8, 0.0, -0.9)
    
    let uranusNode = SCNNode()
    let uranusPosition = SCNVector3(-1.2, 0.0, -0.9)
    
    let neptuneNode = SCNNode()
    let neptunePosition = SCNVector3(-1.6, 0.0, -0.9)
}
