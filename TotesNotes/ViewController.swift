//
//  ViewController.swift
//  TotesNotes
//
//  Created by Allen Spicer on 6/8/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.reminderButton.addTarget(self, action: Selector(createInstantNotification()), forControlEvents: .TouchUpInside)
    }

    @IBOutlet weak var reminderButton: UIButton!
    
    
    func createInstantNotification(){
        let someNote = UILocalNotification()
        
        someNote.fireDate = NSDate().dateByAddingTimeInterval(3.0)
        someNote.alertBody = "This is the 3 second delayed notification"
        
    }
    
    

}

