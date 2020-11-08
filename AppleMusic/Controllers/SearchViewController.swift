//
//  SearchViewController.swift
//  AppleMusic
//
//  Created by Rusell on 08.11.2020.
//

import UIKit

class SearchViewController: UITableViewController {
    
    //MARK: Variables
    let tracks = TrackModel.createTrack()
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super .viewDidLoad()
        view.backgroundColor = UIColor.appColor(.white)
        setupTableView()
        setupSearchBar()
    }
    
    //MARK: Functions
    func setupTableView() {
        tableView.register(LibraryTableViewCell.self)
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    //MARK: Private Functions
    private func setupSearchBar() {
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        searchController.searchBar.delegate = self
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.create(LibraryTableViewCell.self, indexPath)
        let track = tracks[indexPath.row]
        cell.titleLabel?.text = "\(track.artistName)\n\(track.trackName)"
        cell.titleLabel?.numberOfLines = 2
        cell.imageUIImageView.image = UIImage(systemName: "heart")
        
        return cell
    }
    
    
}


extension SearchViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
    }
}
