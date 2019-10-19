//
//  PhotosViewController.swift
//  Tumblr_Lab
//
//  Created by William Gao on 10/12/19.
//  Copyright © 2019 codepath. All rights reserved.
//

import UIKit
import AlamofireImage

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
               self.tableView.reloadData()
            }
        }
        task.resume()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the index path from the cell that was tapped
        let indexPath = tableView.indexPathForSelectedRow
        // Get the Row of the Index Path and set as index
        let index = indexPath?.row
        // Get in touch with the DetailViewController
        let detailedViewController = segue.destination as! detailViewController
        // Pass on the data to the Detail ViewController by setting it's indexPathRow value
        detailedViewController.index = index
    }

    // MARK: - tableView Functions
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "photoCell") as! photoCell

        let post = posts[indexPath.row]

        if let photos = post["photos"] as? [[String: Any]] {
            //photo is NOT nil, we can use it!
            let photo = photos[0]
            let originalSize = photo["original_size"] as! [String: Any]
            let urlString = originalSize["url"] as! String
            let url = URL(string: urlString)
            cell.thumbnail.af_setImage(withURL: url!)
        }
        return cell
    }
}
