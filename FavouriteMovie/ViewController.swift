//
//  ViewController.swift
//  FavouriteMovie
//
//  Created by Abhishek H P on 4/24/16.
//  Copyright © 2016 Abhishek H P. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var movies = [Movie]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func viewDidAppear(animated: Bool) {
        getMovieResults()
        tableView.reloadData()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("MovieCell") as? MovieCell {
            
            let movie = movies[indexPath.row]
            cell.configureCell(movie)
            return cell
            
        } else {
        return MovieCell()
        }
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func getMovieResults() {
        let appDelegate = UIApplication.sharedApplication().delegate as? AppDelegate
        let dbContext = appDelegate?.managedObjectContext
        let fetchMovieResults = NSFetchRequest(entityName: "Movie")
        
        do {
            let fetchedResult = try dbContext?.executeFetchRequest(fetchMovieResults)
            movies = fetchedResult as! [Movie]
        } catch let exception as NSError {
            print(exception.description)
        }
    }

    
    
    
    
    
    
    
}

