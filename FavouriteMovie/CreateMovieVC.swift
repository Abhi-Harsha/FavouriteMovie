//
//  CreateMovieVC.swift
//  FavouriteMovie
//
//  Created by Abhishek H P on 5/4/16.
//  Copyright © 2016 Abhishek H P. All rights reserved.
//

import UIKit

class CreateMovieVC: UIViewController {
    
    @IBOutlet weak var mvtitle: UITextField!
    @IBOutlet weak var mvdescription: UITextField!
    @IBOutlet weak var mvlink: UITextField!
    @IBOutlet weak var mvplot: UITextField!
    @IBOutlet weak var mvImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onBackPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

}
