//
//  DSHeroesViewController.swift
//  DotaScience
//
//  Created by Бекжан on 29.03.2023.
//

import UIKit
import SnapKit
final class DSHeroesViewController: UIViewController {
    
    private let myItems: [String] = ["test1", "tests2", "test3", "test4", "test5","test1", "tests2", "test3", "test4", "test5"]
    private let myTitle:[String] = ["title1", "title2", "title3"]
    
//    private lazy var searchBar : UISearchBar = {
//        let searchBar = UISearchBar()
//        return searchBar
//    }()
    
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .systemBackground
        tableView.register(DTTableViewCell.self, forCellReuseIdentifier: DTTableViewCell.identifier)
        return tableView
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        tableView.dataSource = self
        tableView.delegate = self
        setupView()
        setupConstraints()
    }
}


extension DSHeroesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DTTableViewCell.identifier, for: indexPath) as! DTTableViewCell
//        cell.backgroundColor = .systemCyan
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return myTitle[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return myTitle.count
    }
}

extension DSHeroesViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        450
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 35
    }
}

extension DSHeroesViewController {
    func setupView(){
        view.addSubview(tableView)
        
    }
    
    func setupConstraints(){
        tableView.snp.makeConstraints{make in
            make.top.bottom.equalTo(view.safeAreaLayoutGuide)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(10)
        }
        
    }
}
