//
//  PhotosViewController.swift
//  Tumblr_Lab
//
//  Created by William Gao on 10/12/19.
//  Copyright © 2019 codepath. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - Properties
    
    @IBOutlet weak var tableView: UITableView!
    
    var posts: [[String:Any]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        retrievePosts()
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    // MARK: - Private Functions
    
    private func retrievePosts() {
        let url = URL(string:"https://api.tumblr.com/v2/blog/humansofnewyork.tumblr.com/posts/photo?api_key=Q6vHoaVm5L1u2ZAW1fqv3Jw48gFzYVg9P0vH0VHl3GVy6quoGV")!
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        session.configuration.requestCachePolicy = .reloadIgnoringLocalCacheData
        let task = session.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
             } else if let data = data,
                let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                print(dataDictionary)

                let responseDictionary = dataDictionary["response"] as! [String:Any]
                self.posts = responseDictionary["posts"] as! [[String: Any]]
                print(self.posts.count)
            }
        }
        task.resume()
    }

    // MARK: - tableView Functions
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
}
