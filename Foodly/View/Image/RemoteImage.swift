//
//  RemoteImage.swift
//  Foodly
//
//  Created by Marwan Hisham on 20/10/2023.
//

import SwiftUI

final class ImageLoader: ObservableObject {
    @Published var image: Image? = nil
    func loadImage(fromURLString urlString: String){
        NetworkManager.shared.downloadImage(fromURLString: urlString) { uiImage in
            guard let uiImage = uiImage else {
                return
            }
            self.image = Image(uiImage: uiImage)
        }
    }
}

struct RemoteImage: View {
    var image: Image?
    var body: some View {
        image?.resizable()
             ??
        Image("placeholder")
            .resizable()
            
    }
}


struct FoodRemoteImage: View {
    @StateObject var imageLoader = ImageLoader()
    let urlString: String
    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear{
                imageLoader.loadImage(fromURLString: urlString)
            }
    }
}

#Preview {
    RemoteImage()
}
