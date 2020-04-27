//
//  ResultsViewController.swift
//  Unit3
//
//  Created by AaronH on 2020-04-24.
//  Copyright © 2020 AaronH. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var responses:[Answer]!
    
    @IBOutlet var resultAnswerLabel: UILabel!
    @IBOutlet var resultDefinitionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        calculatePersonalityResult()
    }
    
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [AnimalType:Int] = [:]
        let responseTypes = responses.map{ $0.type }
        
        for response in responseTypes{
            let newCount: Int
            
            if let oldCOunt = frequencyOfAnswers[response]{
                newCount = oldCOunt + 1
            } else {
                newCount = 1
            }
            
            frequencyOfAnswers[response] = newCount
        }
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by:{(pair1, pair2) -> Bool in return pair1.value > pair2.value})
        
//        let mostCommonAnswer = frequentAnswersSorted.first!.key
        let mostCommonAnswer = frequencyOfAnswers.sorted{$0.1 > $1.1}.first!.key
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        
        resultDefinitionLabel.text = mostCommonAnswer.definition
    }
}
