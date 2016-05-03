//
//  MovieCell.swift
//  FavouriteMovie
//
//  Created by Abhishek H P on 5/3/16.
//  Copyright © 2016 Abhishek H P. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDesription: UILabel!
    @IBOutlet weak var movieLink: UILabel!
    @IBOutlet weak var movieImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

  
    
    func configureCell(movie: Movie) {
        movieTitle.text = movie.title
        movieDesription.text = movie.description
        movieLink.text = movie.imdblink
        movieImage.image = movie.getMovieImage()
    }

}
