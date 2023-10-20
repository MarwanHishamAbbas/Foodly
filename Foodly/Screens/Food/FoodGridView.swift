//
//  FoodListView.swift
//  Foodly
//
//  Created by Marwan Hisham on 19/10/2023.
//

import SwiftUI

struct FoodGridView: View {
    @StateObject var viewModel = FoodGridViewModel()
    var body: some View {
        ZStack {
            NavigationView {
                ScrollView {
                    Spacer(minLength: 50)
                    LazyVGrid(columns: viewModel.columns, spacing: 20) {
                        ForEach(viewModel.food) { food in
                            FoodGridItem(food: food)
                        }
                    }
                    
                }
                .navigationTitle("Explore Foodly")
                .padding()
                .background(Color.Background)
            }
            .onAppear {
                viewModel.getFood()
            }
            if viewModel.isLoading {
                LoadingView()
            }
        }
    }
       
}

#Preview {
    FoodGridView()
}
