//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var synthesizer: AVSpeechSynthesizer!
    var voice: AVSpeechSynthesisVoice!
    
    var storyBrain = StoryBrain()
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var commecount = 0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        /*
        let voices = AVSpeechSynthesisVoice.speechVoices()
        for voice in voices {
            if voice.language == "ja-JP" {
                print(voice)
            }
        }
        */
        
        self.synthesizer = AVSpeechSynthesizer()
        self.voice = AVSpeechSynthesisVoice.init(language: "ja-JP")
        show()
    }
    
    @IBAction func choiceMade(_ sender: UIButton){
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        show()
    }
    
    
    
    func show(){
        // storyLabel.text = storyBrain.getStoryTitle()
        reader(text: storyBrain.getStoryTitle())
        choice1Button.setTitle( storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle( storyBrain.getChoice2(), for: .normal)
        Image.image = UIImage(named:storyBrain.getImageTitle())
        speak(storyBrain.getStoryTitle())
    }
    
    //１文字ずつ表示
        func reader(text:String){
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                
                self.commecount = self.commecount + 1
                self.storyLabel.text = String(text.prefix(self.commecount))
                if(self.commecount == text.count){
                    self.commecount = 0
                }
                 else {
                    self.reader(text:text)
                }
            }
        }
    
    // 発話
        func speak(_ text: String) {
            let utterance = AVSpeechUtterance.init(string: text)
            utterance.voice = self.voice
            self.synthesizer.speak(utterance)
        }
}

