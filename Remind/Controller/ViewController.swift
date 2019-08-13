//
//  ViewController.swift
//  Remind
//
//  Created by James Volmert on 8/12/19.
//  Copyright © 2019 James Volmert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func onTimerTapped(_ sender: Any) {
        AlertService.actionSheet(in: self, title: "Five Seconds") {
            UNService.shared.timerRequest(with: 5)
        }
        
    }
    
    @IBAction func onDatePressed(_ sender: Any) {
        AlertService.actionSheet(in: self, title: "Some future time") {
            var components = DateComponents()
            components.second = 0
            UNService.shared.dateRequest(with: components)
        }
        
    }
    
    @IBAction func onLocationPressed(_ sender: Any) {
        AlertService.actionSheet(in: self, title: "When i return") {
            print("Location")

        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        UNService.shared.authorize()
        
    }


}

