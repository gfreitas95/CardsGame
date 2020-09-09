//
//  ViewController.swift
//  CardsGame
//
//  Created by Gustavo on 27/08/20.
//  Copyright © 2020 Gustavo. All rights reserved.
//

import UIKit

class CardGameViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        view.addSubview(collectionView)
        collectionView.backgroundColor = .orange
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    // MARK: - CardsImageDictionary
    
    let cadsImage = [ CustomData(image: #imageLiteral(resourceName: "snorlax")), CustomData(image: #imageLiteral(resourceName: "raticate")), CustomData(image: #imageLiteral(resourceName: "gloom")), CustomData(image: #imageLiteral(resourceName: "slowbro")), CustomData(image: #imageLiteral(resourceName: "growlight")), CustomData(image: #imageLiteral(resourceName: "mewtwo"))]

    // MARK: - UICollectionViewController
        
        let collectionView: UICollectionView = {
           
            let layout = UICollectionViewFlowLayout()
            let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
            
            layout.minimumLineSpacing = 5
            layout.minimumInteritemSpacing = 0
            collectionView.translatesAutoresizingMaskIntoConstraints = false
            collectionView.register(EmojiCell.self, forCellWithReuseIdentifier: "EmojiCell")
            return collectionView
        }()
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 3, height: collectionView.frame.width / 3)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cadsImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EmojiCell", for: indexPath) as! EmojiCell
        cell.data = self.cadsImage[indexPath.row]
        return cell
    }
}
