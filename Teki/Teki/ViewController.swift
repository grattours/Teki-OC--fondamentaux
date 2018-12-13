//
//  ViewController.swift
//  Teki
//
//  Created by Luc Derosne on 16/02/2018.
//  Copyright © 2018 Luc Derosne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // ici le code
    let celebrities = ["le Steve Jobs", "Le Zinedine Zindane", "la Madonna", "le Karl Lagarfeld", "la Scarlet Johansson"]
    let activities = ["du dancefloor", "du barbecue", "de la surprise ratée", "des blagues lourdes", "de la raclette party"]
    
    @IBOutlet weak var quoteLabel: UILabel!
    
    @IBAction func changeQuote() {
// sélection aléatoire d'une célébrité
    let randomIndex1 = Int(arc4random_uniform(UInt32(celebrities.count)))
    let celebrity = celebrities[randomIndex1]
    print(celebrity)
// On séléctionne un élément aléatoire parmi les activités
    let randomIndex2 = Int(arc4random_uniform(UInt32(activities.count)))
    let activity = activities[randomIndex2]
    print(activity)
    let quote = "Tu es " + celebrity + " " + activity + " !"
    quoteLabel.text = quote
    }
}

