//
//  GameScene.swift
//  Supernova Escape
//
//  Created by Victor Huang on 10/25/18.
//  Copyright © 2018 Victor Huang. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var Test_Spaceship : SKSpriteNode?
    
    override func didMove(to view: SKView) {
        
        // Get label node from scene and store it for use later
        //self.label = self.childNode(withName: "//helloLabel") as? SKLabelNode
        
        Test_Spaceship = childNode(withName: "Test_Spaceship") as? SKSpriteNode
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        Test_Spaceship?.physicsBody?.applyForce(CGVector(dx: 1, dy: 200000))
    }

    
}
