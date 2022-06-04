//
//  File.swift
//  Make Your History WWDC
//
//  Created by Rachelle Irene on 22/04/22.
//

import Foundation
import SpriteKit

class StoryScene: SKScene{
    
    override func didMove(to view: SKView) {
        let background = SKSpriteNode (imageNamed: "bgstory1")
        background.size = self.size
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        background.zPosition = 0
        self.addChild(background)
        
        let next = SKLabelNode(fontNamed: "C&C Red Alert [INET]")
        next.text = "NEXT >"
        next.fontSize = 50
        next.fontColor = SKColor.black
        next.position = CGPoint(x: self.size.width*0.72, y: self.size.height*0.15)
        next.zPosition = 1
        next.name = "next"
        self.addChild(next)
    }
 
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch: AnyObject in touches{
            let pointOfTOuch = touch.location(in: self)
            let nodeITapped = atPoint(pointOfTOuch)
            
            if nodeITapped.name == "next"{
                let sceneToMoveTo = Story2Scene(size: self.size)
                sceneToMoveTo.scaleMode = self.scaleMode
                let myTransition = SKTransition.fade(withDuration: 0.5)
                self.view!.presentScene(sceneToMoveTo, transition: myTransition)
                
    
    }
}
    }
}

