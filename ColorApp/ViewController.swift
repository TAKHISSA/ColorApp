//
//  ViewController.swift
//  ColorApp
//
//  Created by Emre Altundağ on 9.07.2024.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet var UIcollectionView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        return 1000
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! AppCollectionViewCell

        cell.backgroundColor = RandomColor()
        // cell.label.backgroundColor = RandomColor()
        cell.label.text = "\(indexPath.row + 1)"

        return cell
    }

    func RandomColor() -> UIColor {
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())

        print(CGFloat(drand48()))

        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
}
