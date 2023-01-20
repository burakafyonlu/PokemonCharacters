//
//  Pokemon.swift
//  PokemonCharacters
//
//  Created by Burak Afyonlu on 16.01.2023.
//

import Foundation
import UIKit

class Pokemon {
    
    var name : String
    var image : UIImage
    var power : String
    
    init(name: String, image: UIImage , power: String) {
        self.name = name
        self.image = image
        self.power = power
    }
    
}
