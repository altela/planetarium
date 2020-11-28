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
    // test
    let description = ["sun" :
                            "Matahari (Sun)\nStruktur : Plasma Hydrogen & Helium\nSuhu : 5,505°C\nJarak Dari Bumi : 152.06 Juta Km\nRotasi : 27 Hari Bumi",
                       "mercury" :
                            "Merkurius (Mercury)\nStruktur : Besi\nSuhu : 427°C (Siang) -180°C (Malam)\nJarak Dari Bumi : 106.24 Juta Km\nRotasi : 59 Hari Bumi\nRevolusi : 88 Hari Bumi",
                       "venus" :
                            "Venus (Venus)\nStruktur : Besi Cair & Nickel\nSuhu : 460°C (Siang & Malam)\nJarak Dari Bumi : 72.536 Juta Km\nRotasi : 243 Hari Bumi\nRevolusi : 225 Hari Bumi",
                       "earth" :
                            "Bumi (Earth)\nStruktur : Batu Basalt & Granite\nSuhu : 14.6°C\nRotasi : 24 Jam\nRevolusi : 365 Hari + 1 (Kabisat)",
                       "mars" :
                            "Mars (Mars)\nStruktur : Nikel, Besi, Sulfur\nSuhu : 20°C (Siang) -73°C(Malam)\nJarak Dari Bumi : 110.76 Juta Km\nRotasi : 24.6 Jam Bumi\nRevolusi : 687 Hari Bumi",
                       "jupiter" :
                            "Jupiter (Jupiter)\nStruktur : Hydrogen & Helium\nSuhu : -145° Derajat Celcius\nJarak Dari Bumi : 620,42 Juta Km Dari Bumi\nRotasi : 9,84 Jam Waktu Bumi\nRevolusi : 4328 Hari Bumi",
                       "saturn" :
                            "Saturnus (Saturn)\nStruktur : Hydrogen & Helium\nSuhu : -178° Derajat Celcius\nJarak Dari Bumi : 1.3428 Milyar Km Dari Bumi\nRotasi : 10.8 Jam Waktu Bumi\nRevolusi : 10752 Hari Bumi",
                       "uranus" :
                            "Uranus (Uranus)\nStruktur : Air, Metana, Amonia\nSuhu : -224° Derajat Celcius\nJarak Dari Bumi : 2.98 Milyar Km Dari Bumi\nRotasi : 17.28 Jam Waktu Bumi\nRevolusi : 30,663 Hari Bumi",
                       "neptune" :
                            "Neptunus (Neptune)\nStruktur : Air, Metana, Amonia\nSuhu : -200° Derajat Celcius\nJarak Dari Bumi : 4.38 Milyar Km Dari Bumi\nRotasi : 16.08 Jam Waktu Bumi\nRevolusi : 60,148 Hari Bumi"
                       
                       
    ]
}
