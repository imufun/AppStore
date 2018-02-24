//
//  ViewController.swift
//  AppStore
//
//  Created by sinbad on 6/7/1439 AH.
//  Copyright © 1439 AH sinbad. All rights reserved.
//

import UIKit


let celId = "cellId"
class FeaturedViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    var appCatetories : [AppCategory]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appCatetories = AppCategory.homeAppCategories()
   
        collectionView?.backgroundColor = UIColor.white
        
        collectionView?.register(CategoryCell.self, forCellWithReuseIdentifier: celId)
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let count = appCatetories?.count {
            return count
        }
        return 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: celId, for: indexPath) as! CategoryCell
        
        cell.appCategory =  appCatetories?[indexPath.item]
        
        
        return cell
    }
    
    //sizeForItemAt
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: view.frame.width, height: 230)
    }
    
}

