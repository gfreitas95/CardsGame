//
//  EmojiCell.swift
//  CardsGame
//
//  Created by Gustavo on 03/09/20.
//  Copyright © 2020 Gustavo. All rights reserved.
//

import UIKit

struct CustomData {
    var image: UIImage
}

class EmojiCell: UICollectionViewCell {
    
    var data: CustomData? {
        didSet {
            guard let data = data else { return }
            emojiImage.image = data.image
        }
    }
    
    let emojiImage: UIImageView = {
        let emojiImage = UIImageView()
        emojiImage.image = UIImage(named: "")
        emojiImage.clipsToBounds = true
        emojiImage.layer.borderWidth = 1
        emojiImage.layer.cornerRadius = 10
        emojiImage.backgroundColor = .white
        emojiImage.layer.masksToBounds = false
        emojiImage.contentMode = .scaleAspectFit
        emojiImage.layer.borderColor = UIColor.black.cgColor
        emojiImage.translatesAutoresizingMaskIntoConstraints = false
       return emojiImage
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(emojiImage)
        
        NSLayoutConstraint.activate([
            emojiImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            emojiImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            emojiImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            emojiImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
