//
//  Nodes.swift
//  planetarium
//
//  Created by Altela Pramardhika on 17/11/20.
//  Copyright © 2020 projectflakes. All rights reserved.
//  Write for testing commits

import UIKit
import SceneKit
import ARKit

struct PlanetNodes {
    let nodes = SCNNode()
    let ring = SCNNode()
    let position = SCNVector3(-0.3, 0.1, -0.7)
    let saturnRingPosition = SCNVector3(-0.3, 0.1, -0.7)
    let saturnRotate = SCNVector4(x: 10, y: 10, z: 10, w: 6)
    let uranusRingPosition = SCNVector3(-0.3, 0.1, -0.7)
    let uranusRingRotate = SCNVector4(x: 10, y: 10, z: 10, w: 10)
}

struct DescriptionNodes{
    let nodes = SCNNode()
    let position = SCNVector3(0.1, -0.1, -0.9)
    let scale = SCNVector3(0.008, 0.008, 0.01)
}
