//
//  ViewController.swift
//  ClockApp
//
//  Created by Maida on 2024-03-18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    let formatter = DateFormatter()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        formatter.timeStyle = DateFormatter.Style.medium
        
        //updateTimeLabel()
        
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true, block: updateTimeLabel(timer:))
    }

    
    func updateTimeLabel(timer: Timer) {
        let date = Date()
        let dateString = formatter.string(from: date)
        
        timeLabel.text = dateString
    }

}

