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
    var TravelTimer : Timer?
    
    override func didMove(to view: SKView) {
        
        // Get label node from scene and store it for use later
        //self.label = self.childNode(withName: "//helloLabel") as? SKLabelNode
        
        Test_Spaceship = childNode(withName: "Test_Spaceship") as? SKSpriteNode
        
        TravelTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block:
            { (timer) in
            self.createMeteor()
            
        })
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        Test_Spaceship?.physicsBody?.applyForce(CGVector(dx: 1, dy: 15000))
    }

    func createMeteor() {
        let meteor = SKSpriteNode(imageNamed: "meteor")
        
        let maxY = size.height/2
        let minY = -size.height/2
        let range = maxY - minY
        let meteorY = maxY - CGFloat(arc4random_uniform(UInt32(range)))
        
        meteor.position = CGPoint(x: size.width, y: meteorY)
        meteor.size = CGSize(width: 100, height: 100)
        let moveLeft = SKAction.moveBy(x: -size.width*2, y: 0, duration: 5)
        let moveRight = SKAction.moveBy(x: size.width*2, y: 0, duration: 5)
        addChild(meteor)
        
        meteor.run(SKAction.sequence([moveLeft, SKAction.removeFromParent()]))
    }
    
    func createPlanet() {
        
    }
    
    func createBlackHole () {
        
    }
    
}
