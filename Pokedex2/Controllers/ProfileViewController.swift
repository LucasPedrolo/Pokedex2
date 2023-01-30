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
    var secondViewController = SecondViewController()
    
    lazy var layout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 60, height: 60)
        return layout
    }()
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView( frame: self.view.bounds, collectionViewLayout: layout)
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(ProfileCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        pokemon { response in self.profiles = response }
        setCollectionView()
        self.navigationItem.title = "Pokédex"
    }
    
    func setCollectionView() {
        view.addSubview(collectionView)
        collectionView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: 150, height: 100))
    }
    
    func pokemon(completion: @escaping ([Profile]) -> ()) {
        completion([
            Profile(id: 1, name: "Bulbasaur", number: "#001", image: "001", type: "GP", pokeDetails: PokemonDetails(number: "#001", name: "Bulbasaur" , type: "GP", evolutions: "Ivysaur", image: "001", weakness: "F", about: "pokemon inicial")),
            Profile(id: 2, name: "Ivysaur", number: "#002", image: "002", type: "GP", pokeDetails: PokemonDetails(number: "#002", name: "Ivysaur", type: "GP", evolutions: "Venussaur", image: "002", weakness: "F", about: "evolucao bulbasaur")),
            Profile(id: 3, name: "Venussaur", number: "#003", image: "003", type: "GP", pokeDetails: PokemonDetails(number: "003", name: "Venussaur", type: "GP", evolutions: "none", image: "003", weakness: "F", about: "Ultima evolucao bulbasaur")),
            Profile(id: 4, name: "Charmander", number: "#004", image: "004", type: "F", pokeDetails: PokemonDetails(number: "#004", name: "Squirtle", type: "W", evolutions: "Wartortle", image: "004", weakness: "G", about: "pokemon inicial")),
            Profile(id: 5, name: "Charmeleon", number: "#005", image: "005", type: "F", pokeDetails: PokemonDetails(number: "#005", name: "Wartorle", type: "W", evolutions: "Blastoise", image: "005", weakness: "G", about: "evolucao squirtle")),
            Profile(id: 6, name: "Charizard", number: "#006", image: "006", type: "FF", pokeDetails: PokemonDetails(number: "#006", name: "Blastoise", type: "W", evolutions: "none", image: "006", weakness: "G", about: "evolucao final squirtle")),
            Profile(id: 7, name: "Squirtle", number: "#007", image: "007", type: "W", pokeDetails: PokemonDetails(number: "#007", name: "Charmander", type: "F", evolutions: "none", image: "007", weakness: "W", about: "pokemon inicial")),
            Profile(id: 8, name: "Wartortle", number: "#008", image: "008", type: "W", pokeDetails: PokemonDetails(number: "#008", name: "Charmilion", type: "F", evolutions: "Charizard", image: "008", weakness: "W", about: "evolucao charmander")),
            Profile(id: 9, name: "Blastoise", number: "#009", image: "009", type: "W", pokeDetails: PokemonDetails(number: "#009", name: "Charizard", type: "FFly", evolutions: "none", image: "009", weakness: "W", about: "Ultima evolucao charmander")),
            Profile(id: 10, name: "Caterpie", number: "#010", image: "010", type: "B", pokeDetails: PokemonDetails(number: "#010", name: "Caterpie", type: "B", evolutions: "Metapod", image: "010", weakness: "F", about: "pokemon bug")),
            Profile(id: 11, name: "Metapod", number: "#011", image: "011", type: "B", pokeDetails: PokemonDetails(number: "#011", name: "Metapod", type: "B", evolutions: "Butterflee", image: "011", weakness: "F", about: "evolucao caterpie")),
            Profile(id: 12, name: "Butterfree", number: "#012", image: "012", type: "BFly", pokeDetails: PokemonDetails(number: "#012", name: "Butterflee", type: "BFly", evolutions: "Butterflee", image: "012", weakness: "F", about: "evolucao final caterpi")),
            Profile(id: 13, name: "Weedle", number: "#013", image: "013", type: "BP", pokeDetails: PokemonDetails(number: "#013", name: "Weedle", type: "BP", evolutions: "kakuna" , image: "013", weakness: "F", about: "pokemon bug")),
            Profile(name: "Kakuna", number: "#014", image: "014", type: "B", pokeDetails: PokemonDetails(number: "#014", name: "Kakuna", type: "BP", evolutions: "Beedrill", image: "014", weakness: "F", about: "evolucao weedle")),
            Profile(id: 15, name: "Beedrill", number: "#015", image: "015", type: "BP", pokeDetails: PokemonDetails(number: "#015", name: "Beedrill", type: "BP", evolutions: "none", image: "015", weakness: "F", about: "ultima evolucao Weedle")),
            Profile(id: 16, name: "Pidgey", number: "#016", image: "016", type: "NFly", pokeDetails: PokemonDetails(number: "#016", name: "Pidgey", type: "NFly", evolutions: "Pidgeotto", image: "016", weakness: "", about: "Pokemon voador")),
            Profile(id: 17, name: "Pidgeotto", number: "#017", image: "017", type: "NFly", pokeDetails: PokemonDetails(number: "#017", name: "Pidgeotto", type: "NFly", evolutions: "Pidgeot", image: "017", weakness: "", about: "evolucao pidgey")),
            Profile(id: 18, name: "Pidgeot", number: "#018", image: "018", type: "NFly", pokeDetails: PokemonDetails(number: "#018", name: "Pidgeot", type: "NFly", evolutions: "none", image: "018", weakness: "", about: "Ultima evolucao Pidgey")),
            Profile(id: 19, name: "Rattata", number: "#019", image: "019", type: "N", pokeDetails: PokemonDetails(number: "#019", name: "Rattata", type: "N", evolutions: "Raticate", image: "019", weakness:"" , about: "Pokemon normal")),
            Profile(id: 20, name: "Raticate", number: "#020", image: "020", type: "N", pokeDetails: PokemonDetails(number: "#020", name: "Raticate", type: "N", evolutions: "", image: "020", weakness: "", about: "ultima evolucao rattata")),
            Profile(id: 21, name: "Spearow", number: "#021", image: "021", type: "NFly", pokeDetails: PokemonDetails(number: "#021", name: "Spearow", type: "NFly", evolutions: "Fearow", image: "021", weakness: "", about:"pokemon Voador")),
            Profile(id: 22, name: "Fearow", number: "#022", image: "022", type: "NFly", pokeDetails: PokemonDetails(number: "#022", name: "Fearow", type: "NFly", evolutions: "", image: "021", weakness: "", about: "Evolucao final spearow")),
            Profile(id: 23, name: "Ekans", number: "#023", image: "023", type: "P", pokeDetails: PokemonDetails(number: "#023", name: "Ekans", type: "P", evolutions: "Arbok", image: "023", weakness: "", about: "Pokemon Poison")),
            Profile(id: 24, name: "Arbok", number: "#024", image: "024", type: "P", pokeDetails: PokemonDetails(number: "#024", name: "Arbok", type: "Poison", evolutions: "", image: "024", weakness: "", about: "Evolucao Final Ekans")),
            Profile(name: "Pikachu", number: "#025", image: "025", type: "E", pokeDetails: PokemonDetails(number: "#025", name: "Pikachu", type: "E", evolutions: "Raichu", image: "025", weakness: "", about: "Pokemon do Ash"))
        ])
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
        let secondViewController = SecondViewController()
        secondViewController.getIndexPath(index: indexPath.row)
        self.present(secondViewController, animated: true)
    }
}
