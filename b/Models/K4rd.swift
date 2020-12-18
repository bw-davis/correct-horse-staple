//
//  bCard.swift
//  b
//
//  Created by Brian Davis on 11/19/20.
//

import SwiftUI
import Foundation


struct K4rd: Hashable, Codable, Identifiable {
    
    // Panini Phoenix, Panini Mosaic, etc...
    var brand: String
    var backgroundColor: String
    var foregroundColor: String?
    // the cards unique identifier sometimes has a few digit character prefix (RRJH)
    var cardNumber: Int
    var id: Int {
        get {
            cardNumber
        }
        
    }
    var isFavorite: Bool
    
    // unique identifier for the image
    private var imageName: String
    var kimage: Image {
        Image(imageName)
    }
    
    // the players name
    var name: String
    var owned: Int
    
    var isInsert: Bool
    var insertName: String
    var sport: String
    var team: String
    var state: String
    var isParallel: Bool
    
    // it could be beneficial to know the name of the city the player plays in
    var city: String
    
    // Baseball, Basketball, Football, etc...
    enum Sport: String, CaseIterable, Codable, Hashable {
        case baseball = "Baseball"
        case basketball = "Basketball"
        case football = "Football"
        case golf = "Golf"
        case hockey = "Hockey"
        case soccer = "Soccer"
    }

}

extension K4rd {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Rarity: Hashable, Codable {
    var color: String
    var print: Int
    var totalPrinted: Int

    enum CodingKeys: String, CodingKey {
        case color = "color"
        case print = "print"
        case totalPrinted = "totalPrinted"
    }

    init(color: String, print: Int, totalPrinted: Int) {
        self.color = color
        self.print = print
        self.totalPrinted = totalPrinted
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        color = try values.decode(String.self, forKey: .color)
        print = try values.decode(Int.self, forKey: .print)
        totalPrinted = try values.decode(Int.self, forKey: .totalPrinted)

    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: CodingKeys.self)
        try values.encode(color, forKey: .color)
        try values.encode(print, forKey: .print)
        try values.encode(totalPrinted, forKey: .totalPrinted)
    }


}

//extension Card {
//    var image: Image {
//
//    }
//}

//var rarity: Rarity

//    var isParallel: Bool {
//        get {
//            return false
//        }
//
//        set(newIsparallel) {
//
//        }
//    }

//    enum CodingKeys: String, CodingKey {
//        case isParallel
//        case isInsert
//        case rarity
//    }
//
//    enum RarityKeys: String, CodingKey {
//        case color
//        case print
//        case totalPrinted
//    }

