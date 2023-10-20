//
//  SplashView.swift
//  Foodly
//
//  Created by Marwan Hisham on 20/10/2023.
//

import SwiftUI

struct SplashView: View {
    @State var isActive: Bool = false
    var body: some View {
        ZStack {
            if self.isActive {
                FoodlyView()
            } else {
                Color.BrandPrimary
                Image("splash")
            }
           
        }
        .ignoresSafeArea()
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation{
                    self.isActive = true
                }
            }
        }
    }
        
}

#Preview {
    SplashView()
}
