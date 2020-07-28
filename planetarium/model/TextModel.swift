//
//  TextModel.swift
//  planetarium
//
//  Created by Altela Pramardhika on 14/07/20.
//  Copyright © 2020 projectflakes. All rights reserved.
//

import UIKit
import SceneKit
import ARKit
import SCNMaterial

// Deklarasi Properti Material Tulisan Untuk Matahari
let materialFontMatahari = SCNMaterial()
let textMatahari = SCNText(string:
        "Matahari\nStruktur : Gas\nSuhu : 1000 Derajat Celcius\nJarak Dari Bumi : 1000 tahun cahaya\nRotasi : 10 Hari Waktu Bumi"
    , extrusionDepth: 1)
