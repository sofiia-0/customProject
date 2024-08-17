//
//  HomeViewController.swift
//  customProject
//
//  Created by LABORATORIO MAC UAM on 17/8/24.
//

import UIKit

class HomeViewController: UIViewController {

    // Outlets
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myCollectionView.register(UINib(nibName: "HomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    let myCustomModel: [MyCustomStruct] = [
        
        MyCustomStruct(myImage: UIImage(named: "image1")!, myLabel: "image1"),
        MyCustomStruct(myImage: UIImage(named: "image2")!, myLabel: "image2"),
        MyCustomStruct(myImage: UIImage(named: "image3")!, myLabel: "image3"),
        MyCustomStruct(myImage: UIImage(named: "image4")!, myLabel: "image4"),
        MyCustomStruct(myImage: UIImage(named: "image5")!, myLabel: "image5")
        
    ]
    
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        myCustomModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? HomeCollectionViewCell
        
        cell?.config(data: myCustomModel[indexPath.row])
        return cell!
        
    }
}
