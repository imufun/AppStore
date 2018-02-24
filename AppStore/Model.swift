//
//  Model.swift
//  AppStore
//
//  Created by sinbad on 6/7/1439 AH.
//  Copyright © 1439 AH sinbad. All rights reserved.
//

import UIKit
class AppCategory : NSObject {
    var name: String?
    var apps: [App]?
    
    
   static func homeAppCategories() -> [AppCategory] {
    
        let bestNewAppCategory = AppCategory()
        bestNewAppCategory.name = "Best New App"
        var BestApp = [App]()
        
        
        let forzenApp = App()
        forzenApp.name = "Desney priences"
        forzenApp.category = "Entertainment"
        forzenApp.price = "2.0"
        forzenApp.imgeName = "frozen" 
    
        BestApp.append(forzenApp)
        bestNewAppCategory.apps = BestApp
    
    
        let bestNewGameCategory = AppCategory()
        bestNewGameCategory.name = "Best New Game"
        var bestNewGameApps = [App]()
    
        let games = App()
        games.name = "Clash royal"
        games.category = "Game"
        games.price = "2.0"
        games.imgeName = "clashroyale"
    
        bestNewGameApps.append(games)
    
    
        bestNewGameCategory.apps = bestNewGameApps
        return [bestNewAppCategory, bestNewGameCategory]
        
        
    }
}

class App: NSObject {
    var id : NSNumber?
    var name: String?
    var category : String?
    var imgeName: String?
    var price: String?
}
