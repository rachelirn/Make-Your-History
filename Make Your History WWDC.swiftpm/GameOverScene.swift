//
//  GameOverScene.swift
//  Make Your History
//
//

import Foundation
import SpriteKit

class GameOverScene: SKScene{
    
    let restartLabel = SKLabelNode(fontNamed: "C&C Red Alert [INET]")
    override func didMove (to view: SKView){
        
        let background = SKSpriteNode(imageNamed: "background gameover")
        background.size = self.size
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        background.zPosition = 0
        self.addChild(background)
        
        let scoreLabel = SKLabelNode(fontNamed: "C&C Red Alert [INET]")
        scoreLabel.text = "SCORE: \(gameScore)"
        scoreLabel.fontSize = 80
        scoreLabel.fontColor = SKColor.white
        scoreLabel.position = CGPoint(x: self.size.width/2, y: self.size.height*0.63)
        scoreLabel.zPosition = 1
        self.addChild(scoreLabel)
        
        let defaults = UserDefaults()
        var highScoreNumber = defaults.integer(forKey: "highScoreSaved")
        
        if gameScore > highScoreNumber{
            highScoreNumber = gameScore
            defaults.set(highScoreNumber, forKey: "highScoreSaved")
        }
        let highScoreLabel = SKLabelNode(fontNamed: "C&C Red Alert [INET]")
        highScoreLabel.text = "HIGH SCORE: \(highScoreNumber)"
        highScoreLabel.fontSize = 80
        highScoreLabel.fontColor = SKColor.white
        highScoreLabel.zPosition = 1
        highScoreLabel.position = CGPoint(x: self.size.width/2, y: self.size.height*0.53)
        self.addChild(highScoreLabel)
        
        
        restartLabel.text = "TRY AGAIN"
        restartLabel.fontSize = 80
        restartLabel.fontColor = SKColor.white
        restartLabel.zPosition = 1
        restartLabel.position = CGPoint(x: self.size.width/2, y: self.size.height*0.4)
        self.addChild(restartLabel)
   }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let pointOfTouch = touch.location(in: self)
            if restartLabel.contains(pointOfTouch){
                let sceneToMoveTo = GameScene(size: self.size)
                sceneToMoveTo.scaleMode = self.scaleMode
                let myTransition = SKTransition.fade(withDuration: 0.5)
                self.view!.presentScene(sceneToMoveTo, transition: myTransition)
                
            }
        }
    }
}

