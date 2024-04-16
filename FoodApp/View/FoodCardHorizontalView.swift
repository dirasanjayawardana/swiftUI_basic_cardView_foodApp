//
//  FoodCardHorizontalView.swift
//  FoodApp
//
//  Created by MACBOOK PRO on 16/04/24.
//

import SwiftUI

struct FoodCardHorizontalView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    UnevenRoundedRectangle(cornerRadii: .init(topLeading: 0, bottomLeading: 40, bottomTrailing: 40, topTrailing: 0))
                        .frame(height: 120)
                    
                    Spacer()
                }
                .foregroundStyle(.bluenav)
                .ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Thrusday, 2 January 2024")
                            .foregroundStyle(.secondary)
                        Text("Your last viewed")
                            .font(.system(.title, design: .rounded))
                            .fontWeight(.bold)
                    }
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            // data yang di looping dalam scrollView harus ada unik id
                            // looping untuk view harus menggunakan ForEach
                            ForEach(Food.foodData) { food in
                                FoodCard(food: food)
                                    .frame(width: 300)
                            }
                        }
                        .padding()
                    }
                }
                .navigationTitle("Food Order")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    Button {
                        print("Cart button tapped")
                    } label: {
                        Image(systemName: "cart")
                            .foregroundStyle(.black)
                    }
                }
                
                VStack {
                    Spacer()
                    
                    UnevenRoundedRectangle(cornerRadii: .init(topLeading: 40, bottomLeading: 0, bottomTrailing: 0, topTrailing: 40))
                        .frame(height: 80)
                }
                .foregroundStyle(.bluenav)
                .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    FoodCardHorizontalView()
}
