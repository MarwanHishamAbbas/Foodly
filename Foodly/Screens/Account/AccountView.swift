//
//  AccountView.swift
//  Foodly
//
//  Created by Marwan Hisham on 20/10/2023.
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()
    var body: some View {
        NavigationStack {
            Form  {
                Section {
                    TextField("First Name", text: $viewModel.user.firstName)
                    TextField("Last Name", text: $viewModel.user.lastName)
                    TextField("Email Address", text: $viewModel.user.emailAddress)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled()
                    DatePicker("Birthday", selection: $viewModel.user.birthDate, displayedComponents: .date)
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                            .frame(maxWidth: .infinity, alignment: .center)
                    }
                } header: {
                    Text("Personal Info")
                }
                
                Section {
                    Toggle("Extra", isOn: $viewModel.user.extra)
                        .tint(Color.BrandPrimary)
                    Toggle("Extra Refill", isOn: $viewModel.user.extraRefill)
                        .tint(Color.BrandPrimary)
                } header: {
                    Text("Requests")
                }
            }
            .navigationTitle("Account Settings")
        }
        .onAppear(){
            viewModel.retrieveUser()
        }
    }
}

#Preview {
    AccountView()
}
