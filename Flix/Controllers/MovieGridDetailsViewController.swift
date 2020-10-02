//
//  MovieGridDetailsViewController.swift
//  Flix
//
//  Created by Jasmyne Roberts on 9/28/20.
//  Copyright © 2020 Jasmyne Roberts. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieGridDetailsViewController: UIViewController {
    
    var movie: [String: Any]!
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    // NEED TO FIX TAP GESTURE RECOGNIZER AND SCREEN TRANSITION
    @IBAction func didTapPoster(_ sender: UITapGestureRecognizer) {
        print(movie["movie_id"] as Any)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)!
        
        posterView.af.setImage(withURL: posterUrl)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)!
        backdropView.af.setImage(withURL: backdropUrl)
        
    
        
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        // Find the selected movie id
        let trailerPath = movie["movie_id"] as! [[String: Any]]
        
        // Pass the selected movie to the details view controller
        let trailerViewController = segue.destination as! MovieTrailerViewController
//        trailerViewController.trailerPath = trailerPath
        
    }


}