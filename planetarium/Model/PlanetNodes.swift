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
