//
//  Account.swift
//  Foodly
//
//  Created by Marwan Hisham on 21/10/2023.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @AppStorage("user") private var userData: Data?
    @Published var user = User()
    
    func saveChanges(){
    //encode data then save it in AppStorage
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            print("User Data Saved !!")
        } catch {
            print("Something went wrong")
        }
        
    }
    
    func retrieveUser(){
        guard let userData = userData else {
            return
        }
        
        do {
            user = try JSONDecoder().decode(User.self, from: userData)
            print("User Data Retrieved !!")
        } catch {
            print("Something went wrong")
        }
        
    }
    
  
    

}
