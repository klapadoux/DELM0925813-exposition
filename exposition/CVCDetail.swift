//
//  CVCDetail.swift
//  exposition
//
//  Created by etudiant on 2015-10-20.
//  Copyright (c) 2015 Etudiant(e) Tim. All rights reserved.
//

import UIKit

class CVCDetail: UIViewController {
    var listeDetail:Array<String> = Array()
    
    @IBOutlet weak var afficheDetail: UIImageView!
    @IBOutlet weak var texteDetail: UITextView!
    @IBOutlet weak var titreDetail: UILabel!
    
    @IBAction func btRetour(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titreDetail.text = listeDetail[0]
        afficheDetail.image = UIImage(named: listeDetail[1])
        texteDetail.text = listeDetail[2]

    }

}
