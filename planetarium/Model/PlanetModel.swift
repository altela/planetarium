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
    let textures = ["sun" : "textures.scnassets/sun.jpg",
                    "mercury" : "textures.scnassets/mercury.jpg",
                    "venus" : "textures.scnassets/venus.jpg",
                    "earth" : "textures.scnassets/earth.jpg",
                    "mars" : "textures.scnassets/mars.jpg",
                    "jupiter" : "textures.scnassets/jupiter.jpg",
                    "saturn" : "textures.scnassets/saturn.jpg",
                    "uranus" : "textures.scnassets/uranus.jpg",
                    "neptune" : "textures.scnassets/neptune.jpg"
    ]
}

struct PlanetDescription {
    let textures = ["sun" : "textures.scnassets/sun.jpg",
                    "mercury" : "textures.scnassets/mercury.jpg",
                    "venus" : "textures.scnassets/venus.jpg",
                    "earth" : "textures.scnassets/earth.jpg",
                    "mars" : "textures.scnassets/mars.jpg",
                    "jupiter" : "textures.scnassets/jupiter.jpg",
                    "saturn" : "textures.scnassets/saturn.jpg",
                    "uranus" : "textures.scnassets/uranus.jpg",
                    "neptune" : "textures.scnassets/neptune.jpg"
    ]
    
    let description = ["sun" :
                        "Sun\nStructure : Plasma Hydrogen & Helium\nTemperature : 5,505°C\nDistance From Earth : 152.06 Million Km\nRotation : 27 Earth Days",
                   "mercury" :
                        "Mercury\nStructure : Iron\nTemperature : 427°C (Day) -180°C (Night)\nDistance From Earth : 106.24 Million Km\nRotation : 59 Earth Days\nRevolution : 88 Earth Days",
                   "venus" :
                        "Venus\nStructure : Liquid Iron & Nickel\nTemperature : 460°C (Day & Night)\nDistance From Earth : 72.536 Million Km\nRotation : 243 Earth Days\nRevolution : 225 Earth Days",
                   "earth" :
                        "Earth\nStructure : Basalt & Granite\nTemperature : 14.6°C\nRotation : 24 Jam\nRevolution : 365 Days + 1 (Leap Day)",
                   "mars" :
                        "Mars\nStructure : Nikel, Iron, Sulfur\nTemperature : 20°C (Day) -73°C(Night)\nDistance From Earth : 110.76 Million Km\nRotation : 24.6 Jam Bumi\nRevolution : 687 Earth Days",
                   "jupiter" :
                        "Jupiter\nStructure : Hydrogen & Helium\nTemperature : -145° Degree Celcius\nDistance From Earth : 620,42 Million Km From Earth\nRotation : 9,84 Earth Hours\nRevolution : 4328 Earth Days",
                   "saturn" :
                        "Saturn\nStructure : Hydrogen & Helium\nTemperature : -178° Degree Celcius\nDistance From Earth : 1.3428 Billion Km From Earth\nRotation : 10.8 Earth Hours\nRevolution : 10752 Earth Days",
                   "uranus" :
                        "Uranus\nStructure : Water, Metane, Amonia\nTemperature : -224° Degree Celcius\nDistance From Earth : 2.98 Billion Km From Earth\nRotation : 17.28 Earth Hours\nRevolution : 30,663 Earth Days",
                   "neptune" :
                        "Neptune\nStructure : Water, Metane, Amonia\nTemperature : -200° Degree Celcius\nDistance From Earth : 4.38 Billion Km From Earth\nRotation : 16.08 Earth Hours\nRevolution : 60,148 Earth Days"
                   
                   
]
}
