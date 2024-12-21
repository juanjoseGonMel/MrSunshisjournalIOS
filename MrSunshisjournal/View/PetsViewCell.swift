//
//  PetsViewCell.swift
//  MrSunshisjournal
//
//  Created by DISMOV on 20/12/24.
//

import UIKit

class PetsViewCell: UITableViewCell {
    
    
    
    
    
    @IBOutlet var petImgView: UIImageView!
    @IBOutlet var petgenderImgView: UIImageView!
    @IBOutlet var petnameLabel: UILabel!
    @IBOutlet var notificationsCategory: UICollectionView!
    
    

    var items: [String] = ["1","2","3"]
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        notificationsCategory.delegate = self
        notificationsCategory.dataSource = self
        
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with items: [String]) {
        self.items = items
        notificationsCategory.reloadData()
        
    }

}


extension PetsViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "noticatCell", for: indexPath)
        //as! CustomCollectionViewCell
        //cell.label.text = items[indexPath.row] // Configure el icono según sea necesario
        //cell.iconImageView.image = UIImage(systemName: "star.fill")
        cell.contentView.backgroundColor = .systemBlue
        return cell
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        // Ajustar el tamaño de las celdas de la colección
        return CGSize(width: 80, height: 80)
        
    }
    
    
}
