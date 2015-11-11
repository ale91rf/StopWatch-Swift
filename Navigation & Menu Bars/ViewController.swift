//
//  ViewController.swift
//  Navigation & Menu Bars
//
//  Created by Ale Ramírez Fernández on 11/11/15.
//  Copyright © 2015 AleFernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mTime = 0
    
    var mTimer = NSTimer()
    
    @IBOutlet weak var mLblTimer: UILabel!
    
    @IBAction func play(sender: AnyObject) {
        
        mTimer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
        
    }

    @IBAction func pause(sender: AnyObject) {
        
        mTimer.invalidate()
        
    }
    
    @IBAction func stop(sender: AnyObject) {
        
        mTimer.invalidate()
        mTime = 0
        mLblTimer.text = "0"
        
    }
    
    func increaseTimer(){
        mTime++
        
        mLblTimer.text = String(mTime)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

