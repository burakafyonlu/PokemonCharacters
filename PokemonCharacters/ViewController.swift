//
//  ViewController.swift
//  PokemonCharacters
//
//  Created by Burak Afyonlu on 16.01.2023.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource , UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var myPokemon = [Pokemon]()
    var chosenPokemon : Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let Bulbasaur = Pokemon(name: "Bulbasaur", image: UIImage(named: "Balbasaur.jpeg")!, power: "OverGrow")
        let Charizard = Pokemon(name: "Charizard", image: UIImage(named: "Charizard.png")!, power: "Blaze")
        let Koraidon = Pokemon(name: "Koraidon", image: UIImage(named: "Koraidon.png")!, power: "Strong")
        let Pikachu = Pokemon(name: "Pikachu", image: UIImage(named: "Pikachu.png")!, power: "Static Electric")
        let Sprigatito = Pokemon(name: "Sprigatito", image: UIImage(named: "Sprigatito.jpeg")!, power: "Grass Cat Pokémon")
        let Squirtle = Pokemon(name: "Squirtle", image: UIImage(named: "Squirtle.jpeg")!, power: "Torrent")
        
        myPokemon.append(Bulbasaur)
        myPokemon.append(Charizard)
        myPokemon.append(Koraidon)
        myPokemon.append(Pikachu)
        myPokemon.append(Sprigatito)
        myPokemon.append(Squirtle)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return myPokemon.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = myPokemon[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        chosenPokemon = myPokemon[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
            if segue.identifier == "toDetailsVC" {
                let destination = segue.destination as! SecondViewController
                destination.selectedPokemon = chosenPokemon
        }
    }
}

