//
//  DTCollectionViewCell.swift
//  DotaScience
//
//  Created by Бекжан on 06.04.2023.
//

import UIKit

class DTCollectionViewCell: UICollectionViewCell {
        
    private let myLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 30)
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .systemGray
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setText(with text:String){
        myLabel.text = text
    }
    
    
    static let identifier = "DTCollectionViewCell"

}

extension DTCollectionViewCell {
    func setupViews(){
        contentView.addSubview(myLabel)
    }

    func setupConstraints(){

        myLabel.snp.makeConstraints{make in
            make.edges.equalToSuperview()
        }

    }
}
