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
    let position = SCNVector3(-0.3, 0.1, -0.7)
}

struct DescriptionNodes{
    let nodes = SCNNode()
    let position = SCNVector3(0.1, -0.1, -0.9)
    let scale = SCNVector3(0.008, 0.008, 0.01)
}

struct Universe {
    let nodes = SCNNode()
    let sunPosition = SCNVector3(-0.3, 0.1, -0.7)
    let mercuryPosition = SCNVector3(-0.5, 0.3, -0.9)
    let marsPosition = SCNVector3(-0.7, 0.5, -0.10)
    let jupiterPosition = SCNVector3(-0.9, 0.7, -0.12)
    let saturnPosition = SCNVector3(-0.12, 0.9, -0.14)
    let uranusPosition = SCNVector3(-0.14, 0.11, -0.16)
    let neptunePosition = SCNVector3(-0.16, 0.13, -0.18)
}
