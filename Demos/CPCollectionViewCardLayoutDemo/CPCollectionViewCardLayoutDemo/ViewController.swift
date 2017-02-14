//
//  ViewController.swift
//  CPCollectionViewCardLayoutDemo
//
//  Created by Parsifal on 2017/2/13.
//  Copyright © 2017年 Parsifal. All rights reserved.
//

import UIKit
import CPCollectionViewKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var configuration: CPCardLayoutConfiguration!
    var layout: CPCollectionViewCardLayout!
    let identifier = "CPCardCollectionViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout = collectionView.collectionViewLayout as! CPCollectionViewCardLayout
        configuration = layout.configuration
        configuration.spacing = 0
        configuration.offsetX = 0
        configuration.fadeFactor = 0.5
        configuration.cellSize = CGSize(width: collectionView.bounds.size.width,
                                        height: collectionView.bounds.size.height-50)
    }
    
}

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CPCardCollectionViewCell", for: indexPath) as! CPCardCollectionViewCell
        cell.label.text = "\(indexPath.item)"
        return cell
    }
    
}

extension ViewController: UICollectionViewDelegate {
    
}
