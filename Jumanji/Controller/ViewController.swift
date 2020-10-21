//
//  ViewController.swift
//  Jumanji
//
//  Created by Valeryia Beizer on 10/14/20.
//

import UIKit

import UIKit

class ViewController: UIViewController {
  //  MARK: - GUI Variables
  @IBOutlet weak var storyLabel: UILabel!
  @IBOutlet weak var choice1Button: UIButton!
  @IBOutlet weak var choice2Button: UIButton!
  @IBOutlet weak var choice3Button: UIButton!
  
  //  MARK: - Variables
  var storyBrain = StoryBrain()
  
  //  MARK: - Life cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.updateUI()
  }
  
  //  MARK: - Actions
  @IBAction func choiceMade(_ sender: UIButton) {
    self.storyBrain.nextStory(userChoice: sender.currentTitle!)
    self.updateUI()
  }
  
  //  MARK: - Methods
  private func updateUI() {
    if storyBrain.storyWithOneAnswer.contains(storyBrain.storyNumber) {
      self.choice2Button.isHidden = true
      self.choice3Button.isHidden = true
    } else if storyBrain.storyWithTwoAnswers.contains(storyBrain.storyNumber){
      self.choice2Button.isHidden = false
      self.choice3Button.isHidden = true
    } else {
      self.choice3Button.isHidden = false
    }
    
    self.storyLabel.text = self.storyBrain.getStoryText()
    self.choice1Button.setTitle(self.storyBrain.getChoice1Text(), for: .normal)
    self.choice2Button.setTitle(self.storyBrain.getChoice2Text(), for: .normal)
  }
}



