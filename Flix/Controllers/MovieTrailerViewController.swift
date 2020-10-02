//
//  MovieTrailerViewController.swift
//  Flix
//
//  Created by Jasmyne Roberts on 10/1/20.
//  Copyright © 2020 Jasmyne Roberts. All rights reserved.
//

import UIKit
import WebKit

class MovieTrailerViewController: UIViewController, WKUIDelegate {
    
    @IBOutlet weak var trailerView: WKWebView!
    var trailerPath: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let preUrl = "https://api.themoviedb.org/3/movie/"
        let postUrl = "/videos?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed"
        let url = URL(string: preUrl + trailerPath + postUrl)!
        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
           // This will run when the network request returns
           if let error = error {
              print(error.localizedDescription)
           } else if let data = data {
              let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]

              // TODO: Get the array of videos
            let videos = dataDictionary["results"] as! [[String : Any]]
            
            // TROUBLESHOOTING: NEED TO GET KEY OF YOUTUBE VIDEO FROM FIRST ITEM IN DATASET
            // EX: https://api.themoviedb.org/3/movie/297762/videos?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed
            let trailerKey = videos["key"][0] as! String

           }
        }
        task.resume()
    }
        
        
        let preUrl = "https://api.themoviedb.org/3/movie/"
        let postUrl = "/videos?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed"
        let trailerUrl = URL(string: preUrl + trailerPath + postUrl)!
        trailerView.load(URLRequest(url: trailerUrl))
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
