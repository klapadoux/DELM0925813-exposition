//
//  ViewController.swift
//  exposition
//
//  Created by Etudiant(e) Tim on 2015-10-19.
//  Copyright (c) 2015 Etudiant(e) Tim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource{
    
    var listeAffiches:Array<Array<String>> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Créer un tableau à partir d'un fichier de type 'plist'
        let pathFichierPlist = NSBundle.mainBundle().pathForResource("lesDonnees", ofType: "plist")!
        listeAffiches = NSArray(contentsOfFile: pathFichierPlist) as! Array<Array<String>>
        println(listeAffiches)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listeAffiches.count
    } // collectionView: numberOfItemsInSection
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let celluleCourante = collectionView.dequeueReusableCellWithReuseIdentifier("CellulleAffiche", forIndexPath:indexPath) as! CVCAffiche
        
        return celluleCourante
        
    } // collectionView: cellForItemAtIndexPath


}

