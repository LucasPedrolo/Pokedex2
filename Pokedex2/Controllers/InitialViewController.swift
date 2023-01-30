//
//  InitialViewController.swift
//  Pokedex2
//
//  Created by unicred on 20/12/22.
//

import UIKit

class InitialViewController: UIViewController {
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "pokedex")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    lazy var myButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .white
        button.setTitle("Pokédex", for: .normal)
        button.titleLabel?.font = UIFont(name: "Montserrat", size: 0)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.setTitleColor(.black, for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 20
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        button.addTarget(self, action: #selector(actionButton), for: .touchUpInside)
        return button
    }()
    
    lazy var myButton2: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isUserInteractionEnabled = true
        button.backgroundColor = .black
        button.setTitle("Search", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.titleLabel?.textColor = .black
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 20
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        button.addTarget(self, action: #selector(actionSearchPokemon), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goPokedex()
        searchPokemon()
        txtField()
        image()
    }
    
    func txtField(){
        lazy var myTxtField = UITextField (frame: CGRect(x: 20, y: 300, width: 350, height: 40))
        
        myTxtField.placeholder = "Search Pokémon"
        myTxtField.font = UIFont.systemFont(ofSize: 15)
        myTxtField.borderStyle = UITextField.BorderStyle.roundedRect
        myTxtField.autocorrectionType = UITextAutocorrectionType.no
        myTxtField.keyboardType = UIKeyboardType.default
        myTxtField.returnKeyType = UIReturnKeyType.done
        myTxtField.clearButtonMode = UITextField.ViewMode.whileEditing
        myTxtField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        
        self.view.addSubview(myTxtField)
    }
    
    func image(){
        view.addSubview(imageView)
        
        imageView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: -100, left: 100, bottom: 0, right:100), size: .init(width: 400, height: 400))
    }
    
    func searchPokemon(){
        view.addSubview(myButton2)
        
        myButton2.anchor(top: nil, leading: myButton.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: myButton.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 200, right:0), size: .init(width: 150, height: myButton.frame.width))
    }
    
    func goPokedex(){
        view.addSubview(myButton)
        
        myButton.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 585, left: 100, bottom: 200, right:100), size: .init(width: 150, height: 100))
    }
    
    @objc func actionButton() {
        let pokedex = ProfileViewController()
        self.navigationController?.pushViewController(pokedex, animated: true)
    }
    
    @objc func actionSearchPokemon() {
        let search = PokemonViewController()
        self.navigationController?.pushViewController(search, animated: true)
    }
}
