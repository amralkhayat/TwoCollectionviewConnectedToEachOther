//
//  ViewController.swift
//  TwoCollectionviewConnectedToEachOther
//
//  Created by amrpc on 12/2/19.
//  Copyright © 2019 amrpc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//MARK:- CollectionViews
    @IBOutlet weak var collectionView1: UICollectionView!
    @IBOutlet weak var collectionView2: UICollectionView!
    
 //MARK:- CollectionViewCellIdentifiers
    let collectionViewAIdentifier = "CollectionViewACell"
    let collectionViewBIdentifier = "CollectionViewBCell"
    //MARK:- Data
    var imagesArray = [UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
       imagesArray = [UIImage(named: "1.jpg")!, UIImage(named: "2.jpg")!, UIImage(named: "3.jpg")!, UIImage(named:"4.jpg")!]
   
    }
}


