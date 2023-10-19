//
//  FoodGridItem.swift
//  Foodly
//
//  Created by Marwan Hisham on 19/10/2023.
//

import SwiftUI

struct FoodGridItem: View {
    var body: some View {
        VStack ( spacing: 10) {
            
            Image("placeholder").resizable().aspectRatio(contentMode: .fill).frame(width: 80, height: 80).clipShape(.rect(cornerRadius: 10)).padding()
            
            
            VStack (alignment: .leading, spacing: 10) {
                Text("Cream Chicken").font(.title3).fontWeight(.bold)
                    .scaledToFit()
                    .minimumScaleFactor(0.5)
                
                HStack {
                    Text("24min").font(.body).foregroundStyle(Color.gray).fontWeight(.medium)
                    Text("230 Cal").font(.body).foregroundStyle(Color.gray).fontWeight(.medium)
                    
                }
                HStack (alignment: .center) {
                    Text("$12.99").fontWeight(.bold).font(.title2)
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "cart").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: 20, height: 20).padding(.all, 7).tint(Color.white).background(Color.BrandPrimary).clipShape(.rect(cornerRadius: 5))
                    }
                }
            }
        }.padding().background(Color.white).clipShape(.rect(cornerRadius: 15))
    }
}

#Preview {
    FoodGridItem().frame(width: 200, height: 200)
}
