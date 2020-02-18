//
//  collectionViewMthods.swift
//  TwoCollectionviewConnectedToEachOther
//
//  Created by amrpc on 12/2/19.
//  Copyright © 2019 amrpc. All rights reserved.
//

import Foundation
import UIKit
//MARK:- COLLECTIONVIEW DATASOURCE AND DELEGATE
extension ViewController : UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        imagesArray.count
    }
    
func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        cellItem(collectionView: collectionView, with: indexPath)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        didselect(collectionView: collectionView , with : indexPath)
    }
    

    private func cellItem (collectionView: UICollectionView , with indexPath:IndexPath ) -> UICollectionViewCell {
        switch collectionView {
             case collectionView1 :
                 let cellA = collectionView1.dequeueReusableCell(withReuseIdentifier: collectionViewAIdentifier, for: indexPath) as! CollectionCell1
                 cellA.setUp ()
                 cellA.bigImage.image = imagesArray[indexPath.row]
                 return cellA
             case collectionView2 :
                 let cellB = collectionView2.dequeueReusableCell(withReuseIdentifier: collectionViewBIdentifier, for: indexPath) as! CollectionCell2
                cellB.smallImage.image = imagesArray[indexPath.row]
                     return cellB
             default:
                 return UICollectionViewCell()
             }
    }
    
    private func didselect (collectionView: UICollectionView , with indexPath:IndexPath ) {
        switch collectionView {
                   case collectionView1 :
                collectionView2.scrollToItem(at: indexPath, at: UICollectionView.ScrollPosition.centeredHorizontally, animated: true)
                   case collectionView2 :
                      collectionView1.scrollToItem(at: indexPath, at: UICollectionView.ScrollPosition.centeredHorizontally, animated: true)
                   default:
                       break
                   }
        
        
    }
    
    
    

}
