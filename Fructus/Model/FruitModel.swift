//
//  FruitModel.swift
//  Fructus
//
//  Created by Luke Mason on 12/28/21.
//

import SwiftUI

// MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID() // Random unique ID to differentiate fruits
    var title: String           //-----------------------------
    var headline: String        //      Classic Attributes
    var image: String           //-----------------------------
    var gradientColors: [Color]
    var description: String
    var nutrition: [String] // Energy, Protein, Vitamins, Fat, etc.
}
