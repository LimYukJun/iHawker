//
//  ContentView.swift
//  iHawker
//  founded by darshan on 16/5/24
//  Created by Yuk Jun Lim on 17/5/24.
//

import SwiftUI
 
struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            HawkerCentersView()
                .tabItem {
                    Label("Hawker Centers", systemImage: "fork.knife.circle")
                }
        }
    }
}
 
#Preview {
    ContentView()
}
 
