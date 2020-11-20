//
//  Item.swift
//  LootLogger
//
//  Created by User on 20.11.2020.
//

import UIKit

class Item {
    var name: String
    var valueInDollars: Int
    var serialNumber: String?
    let dateCreated: Date
    
    init(name: String, serialNumber: String?, valueInDollars: Int) {
        self.name = name
        self.valueInDollars = valueInDollars
        self.serialNumber = serialNumber
        self.dateCreated = Date()
    }
    
    convenience init(random: Bool = false){
        if random {
            let adjective = ["Fluffy", "Rusty", "Shiny"]
            let nouns = ["Bear", "Spork", "Mac"]
            
            let randomAdjective = adjective.randomElement()!
            let randomNoun = nouns.randomElement()!
            
            let randomName = "\(randomAdjective) \(randomNoun)"
            let randomValue = Int.random(in: 0..<100)
            let randomSerialNumber = UUID().uuidString.components(separatedBy: "-").first!
            
            self.init(name: randomName, serialNumber: randomSerialNumber, valueInDollars: randomValue)
        } else {
            self.init(name:"", serialNumber: nil, valueInDollars: 0)
        }
    }
}
