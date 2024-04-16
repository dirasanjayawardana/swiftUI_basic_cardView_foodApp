//
//  FoodCard.swift
//  FoodApp
//
//  Created by MACBOOK PRO on 16/04/24.
//

import SwiftUI

struct FoodCard: View {
    var food: Food
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ImageItem(data: food)
            FoodCategoryItem(data: food)
        }
        .padding(.bottom, 28)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 149/255, green: 165/255, blue: 166/255), lineWidth: 1.0)
        }
    }
}

#Preview {
    FoodCard(food: Food.foodData[0])
        .padding()
}

struct ImageItem: View {
    var data: Food
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(data.image)
                .resizable()
                .scaledToFill()
                .frame(height: 300)
                .clipped()
            
            HStack {
                Image(systemName: "mappin.and.ellipse.circle")
                Text(data.location)
            }
            .foregroundStyle(.white)
            .padding(10)
            .background(
                UnevenRoundedRectangle(
                    cornerRadii: .init(topLeading: 0.0,
                                       bottomTrailing: 10.0)
                )
                .foregroundStyle(.black.opacity(0.7))
            )
        }
    }
}

struct FoodCategoryItem: View {
    var data: Food
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(data.category.joined(separator: ", "))
                    .font(.headline)
                    .foregroundStyle(.secondary)
                Text(data.heading)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundStyle(.primary)
                    .lineLimit(3, reservesSpace: true) // memaksa untuk konsisten 3 baris
                Text("Chef by \(data.chef)".uppercased())
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            .padding(.top, 20)
            .padding(.horizontal, 24)
            
            Spacer() // memberi view kosong agar tampilan weight konsisten
        }
    }
}
