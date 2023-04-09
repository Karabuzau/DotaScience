//
//  DTTableViewCell.swift
//  DotaScience
//
//  Created by Бекжан on 05.04.2023.
//

import UIKit




final class DTTableViewCell: UITableViewCell {

    static let identifier = "DTTableViewCell"

    private lazy var itemCollectionView:UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 200, height: 400)
        let  collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        collectionView.register(DTCollectionViewCell.self, forCellWithReuseIdentifier: DTCollectionViewCell.identifier)
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        setupConstraints()
        itemCollectionView.dataSource = self
        itemCollectionView.delegate = self
        
        

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension DTTableViewCell: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DTCollectionViewCell.identifier, for: indexPath) as! DTCollectionViewCell
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 20
        return cell
    }
    
    
}


extension DTTableViewCell: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)  as! DTCollectionViewCell
        cell.setText(with: "\(Int.random(in: 0..<10))")
        collectionView.reloadData()
    }
}


private extension DTTableViewCell {
    func setupViews(){
        contentView.addSubview(itemCollectionView)
    }
    func setupConstraints(){
        itemCollectionView.snp.makeConstraints{make in
            make.edges.equalToSuperview()
        }
        
    }
}


