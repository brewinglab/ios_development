//
//  CDHelper.swift
//  coredatastack_01
//
//  Created by sweetiewill on 7/25/17.
//  Copyright © 2017 brewinglab. All rights reserved.
//

import Foundation
import CoreData

class CDHelper {
    
    
    lazy var modelURL: NSURL = {
        let bundle = Bundle.main
        if let url = bundle.url(forResource: "Model", withExtension: "momd")  {
            return url as NSURL
            
        }
        
        print ("Managed Object File not Found")
        abort()
    }()
    
    lazy var model: NSManagedObjectModel = {
        return NSManagedObjectModel(contentsOf: self.modelURL as URL)!
    }()
    
    lazy var storeDirectory: NSURL = {
        let fm = FileManager.default
        let urls = fm.urls(for: .documentDirectory, in: .userDomainMask)
        
        return urls[urls.count - 1] as NSURL
    }()
    
    lazy var localStoreURL:  NSURL = {
        let url = self.storeDirectory.appendingPathComponent("CoreDataStack.sqlite")
        return url! as NSURL
    }()
    
    
    lazy var coordinator:  NSPersistentStoreCoordinator = {
        let coordinator = NSPersistentStoreCoordinator(managedObjectModel: self.model)
        
        do {
            try coordinator.addPersistentStore(ofType: NSSQLiteStoreType, configurationName: nil, at: self.localStoreURL as URL, options: nil)
            
        } catch {
            print ("Could not add to the storage persistent")
            abort()
        }
        
        return coordinator
        
    }()
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
