//
//  ContentView.swift
//  frm-app
//
//  Created by Tony Nguyen on 2024-12-04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Goodbye, world!")
                }
                .padding()
                .navigationTitle("Let's Catch Up")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        NavigationLink(destination: ProfileView()) {
                            Image(systemName: "person.crop.circle")
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            // Action for alerts
                        }) {
                            Image(systemName: "bell")
                        }
                    }
                }
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            
            Text("Contacts View")
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            
            Text("Alerts View")
                .tabItem {
                    Image(systemName: "bell.fill")
                    Text("Alerts")
                }
            
            Text("Settings View")
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Profile View")
    }
}

#Preview {
    ContentView()
}
