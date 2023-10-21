//
//  AccountView.swift
//  Foodly
//
//  Created by Marwan Hisham on 20/10/2023.
//

import SwiftUI

struct AccountView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var emailAddress = ""
    @State private var birthDate = Date()
    @State private var extra = false
    @State private var extraRefill = false
    var body: some View {
        NavigationStack {
            Form  {
                Section {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Email Address", text: $emailAddress)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled()
                    DatePicker("Birthday", selection: $birthDate, displayedComponents: .date)
                    Button {
                        print("Saved")
                    } label: {
                        Text("Save Changes")
                    }
                } header: {
                    Text("Personal Info")
                }
                
                Section {
                    Toggle("Extra", isOn: $extra)
                        .tint(Color.BrandPrimary)
                    Toggle("Extra Refill", isOn: $extraRefill)
                        .tint(Color.BrandPrimary)
                } header: {
                    Text("Requests")
                }
            }
            .navigationTitle("Account Settings")
        }
    }
}

#Preview {
    AccountView()
}
