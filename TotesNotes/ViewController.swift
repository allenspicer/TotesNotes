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
      //  self.reminderButton.addTarget(self, action: Selector(createInstantNotification()), forControlEvents: .TouchUpInside)
        
    }

  //  @IBOutlet weak var reminderButton: UIButton!
    
    
   // func createInstantNotification(){
    @IBAction func alertButton(sender: UIButton) {
    

        let types = UIUserNotificationType.Alert
        let settings = UIUserNotificationSettings(forTypes: types, categories: nil)
        UIApplication.sharedApplication().registerUserNotificationSettings(settings)
        
        let someNote = UILocalNotification()
        
        someNote.fireDate = NSDate().dateByAddingTimeInterval(7.0)
        someNote.alertBody = "This is the 3 second delayed notification"
        someNote.alertTitle = "This is our title"
        
        UIApplication.sharedApplication().scheduleLocalNotification(someNote)
        
  //  }
    
    }

}

