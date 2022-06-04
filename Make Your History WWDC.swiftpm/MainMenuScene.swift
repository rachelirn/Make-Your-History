//
//  MainMenuScene.swift
//  Make Your History
//
//

import Foundation
import SpriteKit

class MainMenuScene: SKScene{
    
    override func didMove(to view: SKView) {
        let background = SKSpriteNode (imageNamed: "background start")
        background.size = self.size
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        background.zPosition = 0
        self.addChild(background)
        
        
        let startGame = SKLabelNode(fontNamed: "C&C Red Alert [INET]")
        startGame.text = "START GAME"
        startGame.fontSize = 80
        startGame.fontColor = SKColor.white
        startGame.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.4)
        startGame.zPosition = 1
        startGame.name = "startButton"
        self.addChild(startGame)
    }
 
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch: AnyObject in touches{
            let pointOfTOuch = touch.location(in: self)
            let nodeITapped = atPoint(pointOfTOuch)
            
            if nodeITapped.name == "startButton"{
                let sceneToMoveTo = StoryScene(size: self.size)
                sceneToMoveTo.scaleMode = self.scaleMode
                let myTransition = SKTransition.fade(withDuration: 0.5)
                self.view!.presentScene(sceneToMoveTo, transition: myTransition)
                
        }
    }
    
}
    }
