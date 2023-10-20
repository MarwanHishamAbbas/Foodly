//
//  FoodListViewModel.swift
//  Foodly
//
//  Created by Marwan Hisham on 19/10/2023.
//

import SwiftUI

final class FoodGridViewModel: ObservableObject {
    
    @Published var food: [Food] = []
    @Published var isLoading: Bool = false
    
    func getFood(){
        isLoading = true
        
        NetworkManager.shared.getFood { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let food):
                    self.food = food
                case .failure(_):
                    self.food = []
                }
            }
        }
        
    }
    
    
    
    
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible())]

}
