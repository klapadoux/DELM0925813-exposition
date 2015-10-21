//
//  Intro.swift
//  exposition
//
//  Created by Etudiant(e) Tim on 2015-10-19.
//  Copyright (c) 2015 Etudiant(e) Tim. All rights reserved.
//

import UIKit

class Intro: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let timer = NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: Selector("tournerLaPage"), userInfo: nil, repeats: false)

    }  // viewDidLoad
    
    func tournerLaPage() {
        performSegueWithIdentifier("listeVideos", sender:self)
    } // tournerLaPage
    
}
