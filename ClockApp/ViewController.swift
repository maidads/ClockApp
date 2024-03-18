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
    }

    
    func updateTimeLabel() {
        let date = Date()
    }

}

