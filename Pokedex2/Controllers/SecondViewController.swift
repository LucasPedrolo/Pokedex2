//
//  SecondViewController.swift
//  Pokedex2
//
//  Created by unicred on 19/12/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func getIndexPath(index: Int) {
        print("Esse é o indice: ", index)
        alo(alou2: index)
    }
    
    func alo(alou2: Int){
        if alou2 == 0 {
            print(alou2)
        }
    }
}
