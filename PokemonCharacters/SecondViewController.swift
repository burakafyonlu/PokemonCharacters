//
//  SecondViewController.swift
//  PokemonCharacters
//
//  Created by Burak Afyonlu on 16.01.2023.
//

import UIKit

class SecondViewController: UIViewController  {
    
    var selectedPokemon : Pokemon?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var powerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedPokemon?.name
        imageView.image = selectedPokemon?.image
        powerLabel.text = selectedPokemon?.power
        
    }

    

    
}
