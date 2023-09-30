//
//  SettingsView.swift
//  CryptoCurrencyStatistic
//
//  Created by Mikhail Konovalov on 22.09.23.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.com")!
    let coinGeckoURL = URL(string: "https://www.coingecko.com")!
    let personalURL = URL(string: "https://github.com/MikeKonon?tab=repositories")!
    
    var body: some View {
        NavigationView {
            ZStack {
                // background
                Color.theme.background
                    .ignoresSafeArea()
                
                // contrnt
                List {
                    infoSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    coinGeckoSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    developerSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                }
                
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                            .font(.headline)
                    })
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView {
    
    private var infoSection: some View {
        Section(header: Text("Info")) {
            VStack {
                Text("This application facilitates users in monitoring current cryptocurrency market dynamics while also allowing them to oversee and manage their personal cryptocurrency holdings and financial savings.")
            }
            .padding(.vertical)
            Link("Description of this project on YouTube 😃", destination: youtubeURL)
        }
    }
    
    private var coinGeckoSection: some View {
        Section(header: Text("CoinGecko")) {
            VStack {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                Text("The cryptocurreency data that is used in this app comes from a free API from CoinGecko.")
            }
            .padding(.vertical)
            Link("Visit CoinGecko 😃", destination: coinGeckoURL)
        }
    }
    
    private var developerSection: some View {
        Section(header: Text("Developer Section")) {
            VStack {
                Image("DeveloperPhoto")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(20)
                Text("This application has been developed by Mikhail Konovalov as a portfolio project, incorporating a robust MVVM (Model-View-ViewModel) architecture. It leverages cutting-edge technologies such as Combine, Core Data, publishers/subscribers, and multi-threading to enhance performance and functionality.")
            }
            .padding(.vertical)
            Link("Visit GitHub 😃", destination: personalURL)
        }
    }
}
