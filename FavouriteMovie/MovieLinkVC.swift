//
//  MovieLinkVC.swift
//  FavouriteMovie
//
//  Created by Abhishek H P on 5/15/16.
//  Copyright © 2016 Abhishek H P. All rights reserved.
//

import UIKit

class MovieLinkVC: UIViewController {
    
    @IBOutlet weak var linkview: UIWebView!
    var movieLink: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        displayImbdLink()
    }
    
    func displayImbdLink() {
        if let urlStr = movieLink {
            let mvurl = NSURL(string: urlStr)!
            let request = NSURLRequest(URL: mvurl)
            
            linkview.loadRequest(request)
            
            if linkview.loading {
                print("URL loaded")
            }
        }
    }
    
    @IBAction func onBackPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

}
