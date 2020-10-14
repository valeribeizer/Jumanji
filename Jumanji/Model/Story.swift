//
//  Story.swift
//  Jumanji
//
//  Created by Valeryia Beizer on 10/15/20.
//

import Foundation

struct Story {
  let story: String
  let choice1: String
  let choice1Destination: Int
  let choice2: String
  let choice2Destination: Int
  let choice3: String
  let choice3Destination: Int
  
  init(story: String,
       choice1: String,
       choice1Destination: Int,
       choice2: String,
       choice2Destination: Int,
       choice3: String,
       choice3Destination: Int) {
    self.story = story
    self.choice1 = choice1
    self.choice1Destination = choice1Destination
    self.choice2 = choice2
    self.choice2Destination = choice2Destination
    self.choice3 = choice3
    self.choice3Destination = choice3Destination
  }
}
