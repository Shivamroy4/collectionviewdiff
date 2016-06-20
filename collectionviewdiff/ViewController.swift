//
//  ViewController.swift
//  collectionviewdiff
//
//  Created by Shivam Roy on 19/06/16.
//  Copyright © 2016 ShivamRoy. All rights reserved.
//

import UIKit



class HomeViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    var appCategories = [AppCategory]()
    
    
    private let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = UIColor.whiteColor()
        
        collectionView?.registerClass(CategoryCell.self, forCellWithReuseIdentifier: cellID)
        
        appCategories = AppCategory.sampleAppCategories()
        
    }

    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(cellID, forIndexPath: indexPath) as! CategoryCell
        
        cell.appCategory = appCategories[indexPath.item]
        return cell
        
    }
    
    
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return appCategories.count
        
    }

    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(view.frame.width, 230)
    }
}

