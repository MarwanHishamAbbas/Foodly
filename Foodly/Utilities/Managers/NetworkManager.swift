//
//  NetworkManager.swift
//  Foodly
//
//  Created by Marwan Hisham on 20/10/2023.
//

import UIKit

final class NetworkManager {
        static let shared = NetworkManager()
        static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
        private let foodURL = baseURL + "appetizers"
        private let cache = NSCache<NSString, UIImage>()
    
    func getFood(completed: @escaping (Result<[Food], Error>) -> Void ) {
        guard let url = URL(string: foodURL) else {
            return
        }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
//            Handler Error Cases
            guard let data = data else {
                return
            }
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(FoodResponse.self, from: data)
                completed(.success(decodedResponse.request))
            }
            catch {
                return
            }
        }
        task.resume()
    }
    
    func downloadImage(fromURLString urlString: String, completed: @escaping (UIImage?) -> Void){
        let cacheKey = NSString(string: urlString)
        
        if let image = cache.object(forKey: cacheKey) {
            completed(image)
            return
        }
        
        guard let url = URL(string: urlString) else {
            completed(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            guard let data = data, let image = UIImage(data: data) else {
                completed(nil)
                return
            }
            self.cache.setObject(image, forKey: cacheKey)
        }
        task.resume()
    }
}
