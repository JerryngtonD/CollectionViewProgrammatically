//
//  ViewController.swift
//  CollectionViewProgrammatically
//
//  Created by Evgeny on 11.05.2020.
//  Copyright © 2020 Jerryngton. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = UIColor(red: 44/255, green: 57/255, blue: 95/255, alpha: 1)
        navigationItem.title = "Teams"
        navigationController?.navigationBar.barTintColor = UIColor(red: 217/255, green: 48/255, blue: 88/255, alpha: 1)
    }


}

