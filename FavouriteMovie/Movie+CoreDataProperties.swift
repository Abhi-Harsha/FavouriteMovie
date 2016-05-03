//
//  Movie+CoreDataProperties.swift
//  FavouriteMovie
//
//  Created by Abhishek H P on 5/3/16.
//  Copyright © 2016 Abhishek H P. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Movie {

    @NSManaged var image: NSData?
    @NSManaged var imdblink: String?
    @NSManaged var moviedescription: String?
    @NSManaged var plot: String?
    @NSManaged var title: String?

}
