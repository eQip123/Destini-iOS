//
//  ViewController.swift
//  Destini - IOS
//
//  Created by Aidar Asanakunov on 29/7/22.
//

import UIKit

class ViewController: UIViewController {
    
    let viewMain = MainView()
    var storyBrain = StoryBrain()
    override func loadView() {
        super.loadView()
        self.view = viewMain
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        viewMain.firstChoiceButton.addTarget(self, action: #selector(choiceMade(_:)), for: .touchUpInside)
        viewMain.secondChoiceButton.addTarget(self, action: #selector(choiceMade(_:)), for: .touchUpInside)
        updateUI()
    }
    @objc func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(sender.currentTitle!)
        updateUI()
    }

    func updateUI() {
        viewMain.textLabel.text = storyBrain.getStoryTittle()
        viewMain.firstChoiceButton.setTitle(storyBrain.getChoice1(), for: .normal)
        viewMain.secondChoiceButton.setTitle(storyBrain.getChoice2(), for: .normal)
    }
}

