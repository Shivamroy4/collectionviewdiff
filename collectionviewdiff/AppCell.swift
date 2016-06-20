//
//  AppCell.swift
//  collectionviewdiff
//
//  Created by Shivam Roy on 19/06/16.
//  Copyright © 2016 ShivamRoy. All rights reserved.
//

import UIKit

class AppCell: UICollectionViewCell {
    
    var app: App? {
        didSet {
            if let name = app?.name {
                nameLabel.text = name
            }
            
            categoryLabel.text = app?.category
            
            if let price = app?.price {
                priceLabel.text = "$\(price)"
            } else {
                priceLabel.text = ""
            }
            
            if let imagename = app?.imagename {
                imageView.image = UIImage(named: imagename)
            }
            
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "rest")
        iv.contentMode = .ScaleAspectFill
        iv.layer.cornerRadius = 26
        iv.layer.masksToBounds = true
        return iv
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Disney Build It: Frozen"
        label.font = UIFont.systemFontOfSize(14)
        label.numberOfLines = 2
        return label
    }()
    
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Entertainment"
        label.font = UIFont.systemFontOfSize(13)
        label.textColor = UIColor.darkGrayColor()
        return label
    }()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.text = "$3.99"
        label.font = UIFont.systemFontOfSize(13)
        label.textColor = UIColor.darkGrayColor()
        return label
    }()
    
    
    func setupViews()
    {
        addSubview(imageView)
        addSubview(nameLabel)
        addSubview(categoryLabel)
        addSubview(priceLabel)
        
        
        imageView.frame = CGRectMake(0, 13, frame.width - 6, frame.width - 6)
        nameLabel.frame = CGRectMake(0, frame.width + 4, frame.width, 40)
        categoryLabel.frame = CGRectMake(0, frame.width + 40, frame.width, 20)
        priceLabel.frame = CGRectMake(0, frame.width + 58, frame.width, 20)
        
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-50-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views:["v0": imageView]))
        
    }
    
    

}
    
    
    
    
    
    
    
    
    
    
    
    
    

