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
    
    @IBOutlet weak var cvAffiche: UICollectionView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Créer un tableau à partir d'un fichier de type 'plist'
        let pathFichierPlist = NSBundle.mainBundle().pathForResource("lesDonnees", ofType: "plist")!
        listeAffiches = NSArray(contentsOfFile: pathFichierPlist) as! Array<Array<String>>
        println(listeAffiches)
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listeAffiches.count
    } // collectionView: numberOfItemsInSection
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let celluleCourante = collectionView.dequeueReusableCellWithReuseIdentifier("CellulleAffiche", forIndexPath:indexPath) as! CVCAffiche

        celluleCourante.titre.text = listeAffiches[indexPath.row][0]
        
        celluleCourante.affiche.image = UIImage(named: listeAffiches[indexPath.row][1])
        
    
        return celluleCourante
        
    } // collectionView: cellForItemAtIndexPath
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let selection = cvAffiche.indexPathForCell(sender as! UICollectionViewCell)!.row
        
        var destination = segue.destinationViewController as! CVCDetail
        
        destination.listeDetail = listeAffiches[selection]
        
        //destination.details = amis[selection]
    }

}

