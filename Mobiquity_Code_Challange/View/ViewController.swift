//
//  ViewController.swift
//  Mobiquity_Code_Challange
//
//  Created by Virendra Gupta on 31/07/21.
//

import UIKit

class ViewController: UIViewController ,BookMarkDelegate{

    @IBOutlet weak var tableView: UITableView!
    
    var bookmarked : [String] = []
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    @IBAction func showBookMark(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "bookmarkStoryBoard") as! BookmarkViewController
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }

    func didReceiveBookmark(bookmark: String?) {
        if let selectedCity = bookmark{
        bookmarked.append(selectedCity)
            bookmarked.removeDuplicates()
        }
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookmarked.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = bookmarked[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "cityViewStoryBoard") as! CityViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}


