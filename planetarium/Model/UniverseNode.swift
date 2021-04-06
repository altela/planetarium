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
    let sunPosition = SCNVector3(-0.3, 0.1, -0.7)
    
    let mercuryNode = SCNNode()
    let mercuryPosition = SCNVector3(-0.5, 0.3, -0.9)
    
    let venusNode = SCNNode()
    let venusPosition = SCNVector3(-0.5, 0.3, -0.9)
    
    let earthNode = SCNNode()
    let earthPosition = SCNVector3(-0.5, 0.3, -0.9)

    let marsNode = SCNNode()
    let marsPosition = SCNVector3(-0.7, 0.5, -0.10)
    
    let jupiterNode = SCNNode()
    let jupiterPosition = SCNVector3(-0.9, 0.7, -0.12)
    
    let saturnNode = SCNNode()
    let saturnPosition = SCNVector3(-0.12, 0.9, -0.14)
    
    let uranusNode = SCNNode()
    let uranusPosition = SCNVector3(-0.14, 0.11, -0.16)
    
    let neptuneNode = SCNNode()
    let neptunePosition = SCNVector3(-0.16, 0.13, -0.18)
}
