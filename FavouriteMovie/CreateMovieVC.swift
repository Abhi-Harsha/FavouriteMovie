//
//  CreateMovieVC.swift
//  FavouriteMovie
//
//  Created by Abhishek H P on 5/4/16.
//  Copyright © 2016 Abhishek H P. All rights reserved.
//

import UIKit
import CoreData

class CreateMovieVC: UIViewController , UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    @IBOutlet weak var mvtitle: UITextField!
    @IBOutlet weak var mvdescription: UITextField!
    @IBOutlet weak var mvlink: UITextField!
    @IBOutlet weak var mvplot: UITextField!
    @IBOutlet weak var mvImage: UIImageView!
    
    var imagePicker: UIImagePickerController!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }
    
    @IBAction func CreateNewMovie(sender: UIButton!) {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = appDelegate.managedObjectContext
        let entity = NSEntityDescription.entityForName("Movie", inManagedObjectContext: context)
        let movie = Movie(entity: entity!, insertIntoManagedObjectContext: context)
        
        if let movieTile = mvtitle.text where mvtitle.text != "" , let movieDescp = mvdescription.text where mvdescription.text != "" {
            movie.title = movieTile
            movie.moviedescription = movieDescp
            movie.plot = mvplot.text
            movie.imdblink = mvlink.text
            movie.setMovieImage(mvImage.image!)
            
            context.insertObject(movie)
            
                do {
                    try context.save()
                } catch let error as NSError! {
                    print("Something went wrong while creating movie", error.description)
                }
            }
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        mvImage.image = image
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func AddImage(sender: UIButton!) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }

    
    @IBAction func onBackPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
   
}
