//
//  ViewController.swift
//  IOS-Swift-ARKit3DText01
//
//  Created by Pooya on 2018-06-06.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit
import ARKit
import SceneKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet weak var inText: UITextField!
    @IBOutlet weak var scnView: ARSCNView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scnView.delegate = self
        
        scnView.add3DText(showText: self.inText!.text!)
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()
        
//        self.scnView.debugOptions = [ARSCNDebugOptions.showWorldOrigin, ARSCNDebugOptions.showFeaturePoints, SCNDebugOptions.showPhysicsShapes ]
//        configuration.planeDetection = .horizontal
        
        // Run the view's session
        scnView.session.run(configuration)
    }

    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        scnView.session.pause()
    }

    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }


    @IBAction func updateBtn(_ sender: UIButton) {
        
        scnView.removeNodeByName(nodeName: "numberText")
        
        scnView.add3DText(showText: self.inText!.text!, nodeName: "numberText")
        
    }
    

    
    
}

