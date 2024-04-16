//
//  Food.swift
//  FoodApp
//
//  Created by MACBOOK PRO on 16/04/24.
//

import Foundation

struct Food: Identifiable {
    let id = UUID()
    let image: String
    let category: [String]
    let heading: String
    let chef: String
    let location: String
}

// Dummy Data
extension Food {
    static let foodData: [Food] = [
        Food(
            image: "carbonara",
            category: ["Dine in", "Take away", "Delivery"],
            heading: "Indulge in Creamy Linguine Carbonara",
            chef: "Giovanni Delizioso",
            location: "Restaurant of Jakarta"
        ),
        Food(
            image: "friedrice",
            category: ["Delivery"],
            heading: "Spicy Fried Rice With Sizzle Beef",
            chef: "Ibu Susanti",
            location: "Warung Rasa Nusantara"
        ),
        Food(
            image: "salmonsteak",
            category: ["Dine in", "Take away"],
            heading: "Grilled Citrus Salmon Steak",
            chef: "Santoso Gunawan",
            location: "Seafood Resto Delight"
        ),
        Food(
            image: "mieayam",
            category: ["Dine in", "Take away", "Delivery"],
            heading: "Savor the Irresittible",
            chef: "Ari Wijaya",
            location: "Warung Makan Wijaya"
        ),
    ]
}
