//
//  FoodGridItem.swift
//  Foodly
//
//  Created by Marwan Hisham on 19/10/2023.
//

import SwiftUI

struct FoodGridItem: View {
    
    let food: Food
    
    var body: some View {
        VStack ( spacing: 10) {
            FoodRemoteImage(urlString: food.imageURL)
            VStack (alignment: .leading, spacing: 10) {
                Text(food.name)
                    .font(.title3)
                    .fontWeight(.bold)
                    .scaledToFit()
                    .minimumScaleFactor(0.5)
                
                HStack (alignment: .bottom) {
                    HStack {
                        Image(systemName: "clock")
                            .foregroundStyle(Color.gray)
                        Text("24min")
                            .font(.body)
                            .foregroundStyle(Color.gray)
                            .fontWeight(.medium)
                    }
                    Text(".")
                        .font(.title3)
                        .foregroundStyle(Color.gray)
                        .fontWeight(.bold)
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundStyle(Color.yellow)
                        Text("4.8")
                            .font(.body)
                            .foregroundStyle(Color.gray)
                            .fontWeight(.medium)
                    }
                    
                }
                HStack (alignment: .center) {
                    Text("$\(food.price, specifier: "%.2f")")
                        .fontWeight(.bold)
                        .font(.title2)
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "cart")
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: 25, height: 25)
                            .padding(.all, 10)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                            .background(Color.BrandPrimary)
                            .clipShape(.rect(cornerRadius: 5))
                    }
                }
            }
        }
            .padding(.all, 10)
            .clipShape(.rect(cornerRadius: 15))
    }
}

#Preview {
    FoodGridItem(food: MockData.samplesFood).frame(width: 200, height: 200)
}
