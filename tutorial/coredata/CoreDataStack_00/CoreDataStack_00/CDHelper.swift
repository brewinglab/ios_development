//
//  CDHelper.swift
//  CoreDataStack_00
//
//  Created by sweetiewill on 7/25/17.
//  Copyright © 2017 brewinglab. All rights reserved.
//

import Foundation
// [1] import core data
import CoreData

// [2] create the class and CDHelper is re-useable
class CDHelper {
    
    //[4]
    lazy var storesDirectory:  NSURL = {
        let fm = FileManager.default
        let urls = fm.urls(for: .documentDirectory, in: .userDomainMask)
        
        return urls[urls.count - 1] as NSURL
        
    }()
    
    //[4a]
    lazy var localStoreURL: NSURL = {
        let url = self.storesDirectory.appendingPathComponent("CoreDataStack.sqlite")
        return url! as NSURL
    }()
    
    
    //[3]
    lazy var modelURL: NSURL = {
        let bundle = Bundle.main
        
        if let url = bundle.url(forResource: "Model", withExtension: "momd") {
            return url as NSURL
        }
        
        print ("CRITICAL - Managed Object Model file nout found ")
        
        abort()
    }()
    
    lazy var model: NSManagedObjectModel = {
        //responsible for mapping out the entity for each of the model we create 
        return NSManagedObjectModel(contentsOf: self.modelURL as URL)!
    
    }()
    
    //[5] 
    lazy var coordinator:  NSPersistentStoreCoordinator = {
        let coordinator = NSPersistentStoreCoordinator(managedObjectModel: self.model)
        
        do {
            try coordinator.addPersistentStore(ofType: NSSQLiteStoreType, configurationName: nil, at: self.localStoreURL as URL, options: nil)
        } catch{
            print ("Could not add the persistent store")
            abort() //macro here
        }
        
        return coordinator
        
    }()
    
}


//[4]
//Access Coredata Stack
