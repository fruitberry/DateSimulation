//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    let title : String
    let choice1 : String
    let choice2 : String
    let key1      : Int
    let key2      : Int
    let image    : String
    
    init(title:String, choice1:String, choice1Destination: Int, choice2:String, choice2Destination:Int, image:String){
            
            self.title = title
            self.choice1 = choice1
            self.choice2 = choice2
            key1 = choice1Destination
            key2 = choice2Destination
        self.image = image
        
        }

}
