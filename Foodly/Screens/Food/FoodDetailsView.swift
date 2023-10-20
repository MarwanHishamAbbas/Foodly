//
//  FoodDetailsView.swift
//  Foodly
//
//  Created by Marwan Hisham on 20/10/2023.
//

import SwiftUI

struct FoodDetailsView: View {
    var food: Food
    var body: some View {
        ScrollView {
            VStack (alignment: .leading, spacing: 15) {
                    FoodRemoteImage(urlString: food.imageURL)
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 300)
                        .shadow(color: Color.gray, radius: 50)
                    Text(food.name)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    HStack (spacing: 20) {
                        HStack {
                            Image(systemName: "clock")
                                .foregroundStyle(Color.gray)
                            Text("24min")
                                .font(.body)
                                .foregroundStyle(Color.gray)
                                .fontWeight(.medium)
                        }
                        HStack {
                            Image(systemName: "star.fill")
                                .foregroundStyle(Color.yellow)
                            Text("4.8")
                                .font(.body)
                                .foregroundStyle(Color.gray)
                                .fontWeight(.medium)
                        }
                        HStack {
                            Image(systemName: "flame.fill")
                                .foregroundStyle(Color.red)
                            Text("\(food.calories) Kcal")
                                .font(.body)
                                .foregroundStyle(Color.gray)
                                .fontWeight(.medium)
                        }
                    }
                VStack (alignment: .leading) {
                    Text("Description")
                        .font(.title3)
                        .fontWeight(.semibold)
                    Text(food.description)
                }
                
            }
            .padding()
            Spacer(minLength: 100)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Add to cart")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 50)
                    .background(Color.BrandPrimary).tint(Color.white).clipShape(.buttonBorder).fontWeight(.bold).font(.title3).padding()
            })
        }
        }
    }

#Preview {
    FoodDetailsView(food: MockData.samplesFood)
}
