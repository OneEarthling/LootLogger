//
//  Item.swift
//  LootLogger
//
//  Created by User on 20.11.2020.
//

import UIKit

class Item : Equatable, Codable {
    var name: String
    var valueInDollars: Int
    var serialNumber: String?
    var dateCreated: Date
    let itemKey: String
    
    init(name: String, serialNumber: String?, valueInDollars: Int, dateCreated: Date = Date()) {
        self.name = name
        self.valueInDollars = valueInDollars
        self.serialNumber = serialNumber
        self.dateCreated = dateCreated
        self.itemKey = UUID().uuidString
    }
    
    convenience init(random: Bool = false){
        if random {
            let adjective = ["Fluffy", "Rusty", "Shiny", "Very long adjective so text will overlap cost and maybe even get to two lines"]
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
    
    static func ==(lhs: Item, rhs: Item) -> Bool {
        return lhs.name == rhs.name
            && lhs.serialNumber == rhs.serialNumber
            && lhs.valueInDollars == rhs.valueInDollars
            && lhs.dateCreated == rhs.dateCreated
    }
}
