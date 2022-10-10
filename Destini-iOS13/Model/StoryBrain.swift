//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    var storyNumber = 0
    
    let stories = [
                Story(
                    title: "明日のデート、どこに行きたい？",
                    choice1: "水族館に行きたい。", choice1Destination: 1,
                    choice2: "遊園地に行きたい。", choice2Destination: 2, image: "Beginning.jpg"
                ),
                Story(
                    title: "次、どうする？",
                    choice1: "マンボーを見に行こう。", choice1Destination: 3,
                    choice2: "近くの浜辺に行ってみよう。", choice2Destination: 4, image: "Preparing.jpg"
                ),
                Story(
                    title: "次、どうする？",
                    choice1: "観覧車に乗ろう。", choice1Destination: 5,
                    choice2: "売店で何か食べよう。", choice2Destination: 6, image: "Preparing.jpg"
                ),
                Story(
                    title: "幻想的ね。",
                    choice1: "うん、優雅に泳いでるね。", choice1Destination: 7,
                    choice2: "別の世界にいるみたい。", choice2Destination: 7, image: "Sunfish.jpg"
                ),
                Story(
                    title: "きれいな海ね。",
                    choice1: "そうだね。", choice1Destination: 7,
                    choice2: "君の方が綺麗だよ。", choice2Destination: 7, image: "Beach.jpg"
                ),
                
                Story(
                    title: "今日は誘ってくれてありがとう。",
                    choice1: "こちらこそ。", choice1Destination: 7,
                    choice2: "どういたしまして。", choice2Destination: 7, image: "Preparing.jpg"
                ),
                Story(
                    title: "一口どう？",
                    choice1: "ありがとう。", choice1Destination: 7,
                    choice2: "いただきま〜す。", choice2Destination: 7, image: "Preparing.jpg"
                ),
                Story(
                    title: "とても楽しかったよ。ありがとう。",
                    choice1: "こちらこそ。", choice1Destination: 0,
                    choice2: "楽しんでもらえてよかった。", choice2Destination: 0, image: "Beginning.jpg"
                )

    ]
    
    func getStoryTitle()  -> String{
        return stories[storyNumber].title
    }
    
    
    func getChoice1()  -> String{
        return stories[storyNumber].choice1
    }
    
    func getChoice2()  -> String{
        return stories[storyNumber].choice2
    }
    
    func getImageTitle() -> String{
        return stories[storyNumber].image
    }
    
    mutating func nextStory(userChoice: String){
        
        let currentStory = stories[storyNumber]
        if(userChoice == stories[storyNumber].choice1){
            storyNumber = currentStory.key1
        }
        else if(userChoice == stories[storyNumber].choice2){
            storyNumber = currentStory.key2
        }
    }
}

