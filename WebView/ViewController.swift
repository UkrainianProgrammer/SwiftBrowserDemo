//
//  ViewController.swift
//  WebView
//
//  Created by Oleksandr Sofishchenko on 7/8/16.
//  Copyright © 2016 Oleksandr Sofishchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var Webview: UIWebView!
    @IBOutlet var Searchbar: UISearchBar!
    @IBOutlet var ActInd: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "http://www.apple.com")
        let request = NSURLRequest(URL: url!)
        
        Webview.loadRequest(request)  //load the webpage based on url
        
        Searchbar.text = "http://"  //show the first part of the url for convenience
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //search various websites by using a searchbar
    func searchBarSearchButtonClicked(searchBar: UISearchBar){
        
        searchBar.resignFirstResponder() //remove current webview
        
        let text = Searchbar.text
        let url = NSURL(string: text!)
        let request = NSURLRequest(URL: url!)
        
        Webview.loadRequest(request)
        
    }
    
    //methods for activity indicator
    func webViewDidStartLoad(_ : UIWebView){
        
        ActInd.startAnimating()
    }
    
    func webViewDidFinishLoad(_ : UIWebView){
     
        ActInd.stopAnimating()
    }

}

