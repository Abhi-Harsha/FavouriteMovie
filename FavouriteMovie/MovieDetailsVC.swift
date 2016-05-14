//
//  MovieDetailsVC.swift
//  FavouriteMovie
//
//  Created by Abhishek H P on 5/8/16.
//  Copyright © 2016 Abhishek H P. All rights reserved.
//

import UIKit
import CoreData

class MovieDetailsVC: UIViewController {
    
    @IBOutlet weak var mvtitle: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var plot: UILabel!
    @IBOutlet weak var link: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var movie : Movie?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        if let movieInfo = movie {
            mvtitle.text = movieInfo.title
            desc.text = movieInfo.moviedescription
            plot.text = movieInfo.plot
            link.text = movieInfo.imdblink
            image.image = movieInfo.getMovieImage()
        }
    }
    
    @IBAction func onBackPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "MovieLink" {
            let linkvc = segue.destinationViewController as? MovieLinkVC
            linkvc?.movieLink = movie?.imdblink
        }
    }
}
