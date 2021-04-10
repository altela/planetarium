import UIKit
import SceneKit
import ARKit

struct UniverseModel {
    let sunSphere = SCNSphere(radius:0.24)
    let sunMaterial = SCNMaterial()

    let mercurySphere = SCNSphere(radius:0.03)
    let mercuryMaterial = SCNMaterial()
    
    let venusSphere = SCNSphere(radius:0.04)
    let venusMaterial = SCNMaterial()

    let earthSphere = SCNSphere(radius:0.06)
    let earthMaterial = SCNMaterial()
    
    let marsSphere = SCNSphere(radius:0.06)
    let marsMaterial = SCNMaterial()
    
    let jupiterSphere = SCNSphere(radius:0.15)
    let jupiterMaterial = SCNMaterial()

    let saturnSphere = SCNSphere(radius:0.12)
    let saturnMaterial = SCNMaterial()

    let uranusSphere = SCNSphere(radius:0.11)
    let uranusMaterial = SCNMaterial()

    let neptuneSphere = SCNSphere(radius:0.11)
    let neptuneMaterial = SCNMaterial()

}
