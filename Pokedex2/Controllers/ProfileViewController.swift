//
//  ViewController.swift
//  Pokedex2
//
//  Created by unicred on 19/12/22.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private let cellId = "cellId"
    var profiles: [Profile]?
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var secondViewController = SecondViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(ProfileCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        pokemons()
        self.navigationItem.title = "Pokédex"
    }
    
    
    func pokemons(){
        
        let pokemon1 = Profile(name: "Bulbasaur", number: "#001", image: "001", type: "GP")
        
        let pokemon2 = Profile(name: "Ivysaur", number: "#002", image: "002", type: "GP")
        
        let pokemon3 = Profile(name: "Venussaur", number: "#003", image: "003", type: "GP")
        
        let pokemon4 = Profile(name: "Charmander", number: "#004", image: "004", type: "F")
        
        let pokemon5 = Profile(name: "Charmeleon", number: "#005", image: "005", type: "F")
        
        let pokemon6 = Profile(name: "Charizard", number: "#006", image: "006", type: "FF")
        
        let pokemon7 = Profile(name: "Squirtle", number: "#007", image: "007", type: "W")
        
        let pokemon8 = Profile(name: "Wartortle", number: "#008", image: "008", type: "W")
        
        let pokemon9 = Profile(name: "Blastoise", number: "#009", image: "009", type: "W")
        
        let pokemon10 = Profile(name: "Caterpie", number: "#010", image: "010", type: "B")
        
        let pokemon11 = Profile(name: "Metapod", number: "#011", image: "011", type: "B")
        
        let pokemon12 = Profile(name: "Butterfree", number: "#012", image: "012", type: "BFly")

        let pokemon13 = Profile(name: "Weedle", number: "#013", image: "013", type: "BP")
        
        let pokemon14 = Profile(name: "Kakuna", number: "#014", image: "014", type: "B")
        
        let pokemon15 = Profile(name: "Beedrill", number: "#015", image: "015", type: "BP")
        
        let pokemon16 = Profile(name: "Pidgey", number: "#016", image: "016", type: "NFly")
        
        let pokemon17 = Profile(name: "Pidgeotto", number: "#017", image: "017", type: "NFly")
        
        let pokemon18 = Profile(name: "Pidgeot", number: "#018", image: "018", type: "NFly")
        
        let pokemon19 = Profile(name: "Rattata", number: "#019", image: "019", type: "N")
        
        let pokemon20 = Profile(name: "Raticate", number: "#020", image: "020", type: "N")
        
        let pokemon21 = Profile(name: "Spearow", number: "#021", image: "021", type: "NFly")
        
        let pokemon22 = Profile(name: "Fearow", number: "#022", image: "022", type: "NFly")
        
        let pokemon23 = Profile(name: "Ivysaur", number: "#023", image: "023", type: "P")
        
        let pokemon24 = Profile(name: "Arbok", number: "#024", image: "024", type: "P")

        let pokemon25 = Profile(name: "Pikachu", number: "#025", image: "025", type: "E")
        
        profiles = [pokemon1, pokemon2, pokemon3, pokemon4, pokemon5, pokemon6, pokemon7, pokemon8, pokemon9, pokemon10, pokemon11, pokemon12, pokemon13, pokemon14, pokemon15, pokemon16, pokemon17, pokemon18, pokemon19, pokemon20, pokemon21, pokemon22, pokemon23, pokemon24, pokemon25]
    }
    
}


extension ProfileViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let count = profiles?.count {
            return count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! ProfileCollectionViewCell
        
        if let items = profiles?[indexPath.item] {
            cell.profile = items
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if let secondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController {
            
            secondViewController.getIndexPath(index: indexPath.row)
            present(secondViewController, animated: true)
        }
        
        
        
//        for i in profiles?.count {
//            if i == indexPath.row {
//
//            }
//        }
//
//
//        if indexPath.row == 0 {
//            print("funciona")
//        }
    }
    
}


