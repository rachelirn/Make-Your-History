//
//  File.swift
//  Make Your History WWDC
//
//  Created by Rachelle Irene on 22/04/22.
//

import Foundation
import SpriteKit

class Story2Scene: SKScene{
    
    override func didMove(to view: SKView) {
        let background = SKSpriteNode (imageNamed: "bgstory2")
        background.size = self.size
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        background.zPosition = 0
        self.addChild(background)
        
        let ready = SKLabelNode(fontNamed: "C&C Red Alert [INET]")
        ready.text = "TAP TO START"
        ready.fontSize = 29
        ready.fontColor = SKColor.black
        ready.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.218)
        ready.zPosition = 1
        ready.name = "ready"
        self.addChild(ready)
    }
 
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch: AnyObject in touches{
            let pointOfTOuch = touch.location(in: self)
            let nodeITapped = atPoint(pointOfTOuch)
            
            if nodeITapped.name == "ready"{
                let sceneToMoveTo = GameScene(size: self.size)
                sceneToMoveTo.scaleMode = self.scaleMode
                let myTransition = SKTransition.fade(withDuration: 0.5)
                self.view!.presentScene(sceneToMoveTo, transition: myTransition)
                
    
    }
}
    }
}
