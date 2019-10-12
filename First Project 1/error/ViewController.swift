//
//  ViewController.swift
//  error
//
//  Created by Karen  on 10/8/19.
//  Copyright © 2019 Karen . All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    let imageArray = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "8"),UIImage(named: "9"),]
    let nameArray = ["Hollywood", "Harry Potter", "Amelie","Carol","Moonlight", "Her", "Avengers", "Shrek", "Ted"]
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 1, green: 0.556, blue: 0.232, alpha: 1)
        // Do any additional setup after loading the view.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        collectionView.backgroundColor = UIColor(red: 1, green: 0.556, blue:0.8, alpha:0.4 )
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCollectionViewCell", for: indexPath) as! MainCollectionViewCell
        
        cell.imagen.image = imageArray[indexPath.row]
        cell.titulo.text! = nameArray[indexPath.row]
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        
        let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let infoVC = mainStoryboard.instantiateViewController(withIdentifier: "InfoViewController") as! InfoViewController
        infoVC.image = imageArray[indexPath.row]!
        infoVC.name = nameArray[indexPath.row]
        
        self.navigationController?.pushViewController(infoVC, animated: true)
        
    }

}

