//
//  Movie.swift
//  FavouriteMovie
//
//  Created by Abhishek H P on 4/28/16.
//  Copyright © 2016 Abhishek H P. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Movie: NSManagedObject {

    func setMovieImage(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    
    func getMovieImage() -> UIImage? {
        if let img = self.image {
           let Image = UIImage(data: img)
            return Image
        }
        return nil
    }

}
