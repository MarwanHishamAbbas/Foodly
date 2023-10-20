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
                    LazyVGrid(columns: viewModel.columns, spacing: 20) {
                        ForEach(viewModel.food) { food in
                            NavigationLink {
                                FoodDetailsView(food: food)
                            } label: {
                                FoodGridItem(food: food)
                            }
                            .buttonStyle(PlainButtonStyle())

                            
                        }
                    }
                    
                }
                .navigationTitle("Foodly ♨︎")
                .padding()

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
