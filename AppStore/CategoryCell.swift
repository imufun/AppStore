//
//  CategoryCell.swift
//  AppStore
//
//  Created by sinbad on 6/7/1439 AH.
//  Copyright © 1439 AH sinbad. All rights reserved.
//

import UIKit

class CategoryCell : UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    //
    let appsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectioView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectioView.backgroundColor = UIColor.red
        collectioView.translatesAutoresizingMaskIntoConstraints = false
        return collectioView
    }()
    
    func setupView(){
        backgroundColor = UIColor.black
        addSubview(appsCollectionView)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-8-[v0]-8-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": appsCollectionView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": appsCollectionView]))
 
    }
}
