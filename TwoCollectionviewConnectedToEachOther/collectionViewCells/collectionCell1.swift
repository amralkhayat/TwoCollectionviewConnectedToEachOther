//
//  collectionCell1.swift
//  TwoCollectionviewConnectedToEachOther
//
//  Created by amrpc on 12/2/19.
//  Copyright © 2019 amrpc. All rights reserved.
//

import UIKit

class collectionCell1: UICollectionViewCell ,  UIGestureRecognizerDelegate ,  UIScrollViewDelegate {
    
    @IBOutlet weak var bigImage: UIImageView!
    @IBOutlet weak var scroll: UIScrollView!
    
   
    
    
    func setUp () {
        let tapGesture = UITapGestureRecognizer(target: self,
                                                         action: #selector(handleTap(gesture:)))
         tapGesture.delegate = self
         scroll.minimumZoomScale = 1.0
         scroll.maximumZoomScale = 5.0
         scroll.delegate = self
          tapGesture.numberOfTapsRequired = 2
         bigImage.isUserInteractionEnabled = true
         bigImage.addGestureRecognizer(tapGesture)
        
    }
    
    @objc func handleTap(gesture:UITapGestureRecognizer) {
                    if (self.scroll.zoomScale < self.scroll.maximumZoomScale) {
                            let newScale = self.scroll.zoomScale * 3
        let zoomRect = self.zoomRectForScale(scale: newScale, center: gesture.location(in: gesture.view))
                            self.scroll.zoom(to: zoomRect, animated: true)
                        } else {
                            self.scroll.setZoomScale(1.0, animated: true)
                        }
         }
    
    
    
          func zoomRectForScale(scale:CGFloat, center: CGPoint) -> CGRect{
               let size = CGSize(
                   width: self.scroll.frame.size.width / scale,
                   height: self.scroll.frame.size.height / scale
               )
               return CGRect(
                   origin: CGPoint(
                       x: center.x - size.width / 2.0,
                       y: center.y - size.height / 2.0
                   ),
                   size: size
               )
           }
   
    
    
}
