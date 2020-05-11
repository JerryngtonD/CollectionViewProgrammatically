//
//  ViewController.swift
//  CollectionViewProgrammatically
//
//  Created by Evgeny on 11.05.2020.
//  Copyright © 2020 Jerryngton. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    let cellId = "myCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = UIColor(red: 44/255, green: 57/255, blue: 95/255, alpha: 1)
        navigationItem.title = "Teams"
        navigationController?.navigationBar.barTintColor = UIColor(red: 217/255, green: 48/255, blue: 88/255, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.white,
            NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)
            ]
        
        collectionView.register(TeamCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! TeamCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width / 3 - 16, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
    }
    
    
    

}

class TeamCell : UICollectionViewCell {
    let teamImageView: UIImageView = {
       let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.backgroundColor = .green
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let teamNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        addSubview(teamImageView)
        addSubview(teamNameLabel)
        

      
        
        teamImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        teamImageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        teamImageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
        teamNameLabel.topAnchor.constraint(equalTo: teamImageView.bottomAnchor).isActive = true
        teamNameLabel.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        teamNameLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        teamNameLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        self.backgroundColor = UIColor(red: 11/255, green: 22/255, blue: 53/255, alpha: 1)
    }
}

