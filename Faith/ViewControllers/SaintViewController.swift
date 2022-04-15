//
//  FaithViewController.swift
//  Faith
//
//  Created by Олейник Богдан on 06.02.2022.
//

import UIKit

class SaintViewController: UICollectionViewController {
    
    var saints = Saints.getSaints()
    
    let itemPerRow: CGFloat = 2
    let sectionInserts = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        saints.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "faithCell", for: indexPath) as! SaintCell
        cell.saintImage.image = saints[indexPath.item].image
        
        return cell
    }
    // MARK: - Collection view delegate
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let saint = saints[indexPath.item]
        performSegue(withIdentifier: "categoriesSegue", sender: saint)
    }
    
    
    
    //MARK: - Navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "categoriesSegue" {
                guard let categoriesVC = segue.destination as? FaithViewController else { return }
//                guard let indexPath = collectionView.indexPathsForSelectedItems else { return }
//                let model = saints[indexPath]
                categoriesVC.saints = sender as? Saints
            }
        }
}

extension SaintViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let paddingWidth = sectionInserts.left * (itemPerRow + 1)
        let availableWidth = collectionView.frame.width - paddingWidth
        let widthPerItem = availableWidth / itemPerRow
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        20
    }
}
