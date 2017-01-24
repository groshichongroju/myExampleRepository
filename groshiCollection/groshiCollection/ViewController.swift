//
//  ViewController.swift
//  groshiCollection
//
//  Created by CTS_DEP_AMM00217 on 23/12/16.
//  Copyright © 2016 cognizant. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    let num=["one","two","three","four","five","six",]

    @IBOutlet var mycollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return num.count
    }
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 6
    }
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    
     let cell=collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CollectionViewCell
       cell.cellLAbel1.text=num[indexPath.row]
        
        return cell
    }


}

