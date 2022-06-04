import SwiftUI
import SpriteKit
import AVFoundation

var backingAudio = AVAudioPlayer()

struct ContentView: View {
   
    var scene: SKScene {
        let scene = MainMenuScene(size: CGSize(width: 1536, height: 2048))
        
        scene.scaleMode = .aspectFill
        
        return scene
    }

    var body: some View {
        VStack{
        SpriteView(scene: scene)
                .ignoresSafeArea()
        } .onAppear{
          
            let filePath = Bundle.main.path(forResource: "backing audio", ofType: "mp3")
            let audioNSURL = NSURL(fileURLWithPath: filePath!)
            
            do { backingAudio = try AVAudioPlayer(contentsOf: audioNSURL as URL)}
            catch { return print("Cannot Find The Audio")}
            
            backingAudio.numberOfLoops = -1
            backingAudio.volume = 0.5
            backingAudio.play()
        }
    }
}

