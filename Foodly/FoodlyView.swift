//
//  ContentView.swift
//  Foodly
//
//  Created by Marwan Hisham on 19/10/2023.
//

import SwiftUI

struct FoodlyView: View {
    var body: some View {
            TabView {
                FoodGridView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Homepage")
                    }
                    
                Text("Cart")
                    .tabItem {
                        Image(systemName: "cart")
                        Text("Cart")
                    }
                Text("My Account")
                    .tabItem {
                        Image(systemName: "person")
                        Text("Account")
                    }
            }
            
            .accentColor(.BrandPrimary)
           
}
}


#Preview {
    FoodlyView()
}
