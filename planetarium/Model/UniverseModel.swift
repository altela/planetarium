import UIKit
import SceneKit
import ARKit

struct UniverseModel {
    let sunSphere = SCNSphere(radius:0.35)
    let sunMaterial = SCNMaterial()

    let mercurySphere = SCNSphere(radius:0.1)
    let mercuryMaterial = SCNMaterial()
    
    let venusSphere = SCNSphere(radius:0.15)
    let venusMaterial = SCNMaterial()

    let earthSphere = SCNSphere(radius:0.16)
    let earthMaterial = SCNMaterial()
    
    let marsSphere = SCNSphere(radius:0.12)
    let marsMaterial = SCNMaterial()
    
    let jupiterSphere = SCNSphere(radius:0.29)
    let jupiterMaterial = SCNMaterial()

    let saturnSphere = SCNSphere(radius:0.26)
    let saturnMaterial = SCNMaterial()

    let uranusSphere = SCNSphere(radius:0.22)
    let uranusMaterial = SCNMaterial()

    let neptuneSphere = SCNSphere(radius:0.2)
    let neptuneMaterial = SCNMaterial()

}
