//
//  Models.swift
//  collectionviewdiff
//
//  Created by Shivam Roy on 20/06/16.
//  Copyright © 2016 ShivamRoy. All rights reserved.
//

import UIKit

class AppCategory: NSObject {
    
    var name: String?
    var apps: [App]?
    var type: String?
    
    
    
    static func sampleAppCategories() -> [AppCategory]
    {
        var apps = [App]()
        
        let BestNewAppsCategory = AppCategory()
        
        BestNewAppsCategory.name = "Best New Apps"
        
        let frozenapp = App()
        frozenapp.name = "Frozen"
        frozenapp.category = "Entertainment"
        frozenapp.imagename = NSURL(string: "http://www.treathunger.com/rest_photos/70mm_int.jpg")
        frozenapp.price = NSNumber(float: 3.49)
        apps.append(frozenapp)
        
        BestNewAppsCategory.apps = apps
        
        
        let bestNewGamesCategory = AppCategory()
        bestNewGamesCategory.name = "Best New Games"
        
        var bestNewGamesApps = [App]()
        
        let telepaintApp = App()
        telepaintApp.name = "Telepaint"
        telepaintApp.category = "Games"
        telepaintApp.imagename = NSURL(string: "http://www.treathunger.com/rest_photos/tyc_int.jpg")
        telepaintApp.price = NSNumber(float: 2.99)
        
        bestNewGamesApps.append(telepaintApp)
        
        bestNewGamesCategory.apps = bestNewGamesApps
        
        return [BestNewAppsCategory, bestNewGamesCategory]
        
        
        
        
    }
   
    
    
}


class App: NSObject
{
    var name: String?
    var id: NSNumber?
    var category: String?
    var imagename: NSURL?
    var price: NSNumber?
}

