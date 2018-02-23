//
//  CategoryCell.swift
//  AppStore
//
//  Created by sinbad on 6/7/1439 AH.
//  Copyright © 1439 AH sinbad. All rights reserved.
//

import UIKit

class CategoryCell : UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let cellId = "appCellId"
    
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
        layout.scrollDirection = .horizontal
        let collectioView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectioView.backgroundColor = UIColor.clear
        collectioView.translatesAutoresizingMaskIntoConstraints = false
        return collectioView
    }()
    
    let dividerLine : UIView = {
       let div = UIView()
        div.backgroundColor = UIColor.gray
        div.translatesAutoresizingMaskIntoConstraints = false
        return div
    }()
    
    let TitleLabel : UILabel = {
       let title = UILabel()
        title.text = "Best New App"
        title.font = UIFont.boldSystemFont(ofSize: 14)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    func setupView(){
        backgroundColor = UIColor.clear
        addSubview(appsCollectionView)
        addSubview(dividerLine)
        addSubview(TitleLabel)
        
        appsCollectionView.dataSource = self
        appsCollectionView.delegate = self
        
        
        
        appsCollectionView.register(AppCell.self, forCellWithReuseIdentifier: cellId)
        
         addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-14-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": TitleLabel]))
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-14-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": dividerLine]))
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": appsCollectionView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[TitleLabel(30)][v0][v1(0.5)]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": appsCollectionView, "v1": dividerLine, "TitleLabel" : TitleLabel]))
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as!  AppCell
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 100, height: frame.height - 32)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
    }
}

class AppCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupViews(){
        
        addSubview(SetImageView)
        addSubview(NameLabel)
        addSubview(CategoryLabel)
        addSubview(PriceLabel)
        SetImageView.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.width)
        NameLabel.frame = CGRect(x: 0, y: frame.width + 2, width: frame.width, height: 40)
        CategoryLabel.frame = CGRect(x: 0, y: frame.width + 38, width: frame.width, height: 20)
        PriceLabel.frame = CGRect(x: 0, y: frame.width + 60, width: frame.width, height: 10)
    }
    
    let SetImageView : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "frozen")
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 16
        image.layer.masksToBounds = true
        return image
    }()
    
    let NameLabel : UILabel = {
        let name = UILabel()
        name.text = "Disney Build It: Forzen"
        name.font = UIFont.systemFont(ofSize: 12)
        name.numberOfLines = 2
        return name
    }()
    let CategoryLabel : UILabel = {
        let name = UILabel()
        name.text = "Entertainment"
        name.font = UIFont.systemFont(ofSize: 12)
        return name
    }()
    
    let PriceLabel : UILabel = {
        let name = UILabel()
        name.text = "$1.0"
        name.font = UIFont.systemFont(ofSize: 12)
        name.textColor = UIColor.darkGray
        return name
    }()
    
}































