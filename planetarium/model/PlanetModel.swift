//
//  PlanetModel.swift
//  planetarium
//
//  Created by Altela Pramardhika on 17/11/20.
//  Copyright © 2020 projectflakes. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

struct PlanetModel {
    let sphere = SCNSphere(radius:0.2)
    let material = SCNMaterial()
    let textures = ["sun" :
        "textures.scnassets/sun.jpg"
    ]
}

struct PlanetDescription {
    let textures = ["sun" : "textures.scnassets/sun.jpg"
    ]
    
    let description = ["sun" :
            "Matahari (Sun)\nStruktur : Plasma Hydrogen & Helium\nSuhu : 5,505°C\nJarak Dari Bumi : 152.06 Juta Km\nRotasi : 27 Hari Bumi"
    ]
}
