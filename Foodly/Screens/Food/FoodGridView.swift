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
            NavigationView {
                ScrollView {
                    Spacer(minLength: 50)
                    LazyVGrid(columns: viewModel.columns, spacing: 20) {
                        FoodGridItem()
                        FoodGridItem()
                        FoodGridItem()
                        
                    }
                    
                }
                .navigationTitle("Explore Foodly")
                .padding()
                .background(Color.Background)
                
            }
    
            
        
    }
}

#Preview {
    FoodGridView()
}
