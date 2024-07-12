//
//  HawkerCentersView.swift
//  iHawker
//
//  Created by Yuk Jun Lim on 17/5/24.
//

import SwiftUI
 
struct HawkerCentersView: View {
    let centers = ["Our Tampines Hub", "Newton Food Court", "East Coast Lagoon Food Village", "Marine Parade Hawker Center"]
 
    @State private var searchText = ""
 
    var body: some View {
        
        NavigationStack {
            
            List {
                
                ForEach(searchResults, id: \.self) { center in
                    NavigationLink {
                        
                        if(center == "Our Tampines Hub"){
                            CenterView()
                        }else{
                            Text(center)
                        }
                        
                    } label: {
                        
                        VStack(alignment: .leading) {
                            Text(center)
                            if(center == "Our Tampines Hub"){
                                Text("1 Tampines Walk")
                            }else if(center == "Newton Food Court"){
                                Text("500 Clemenceau Ave North")
                            }else if(center == "East Coast Lagoon Food Village"){
                                Text("1220 East Coast Parkway")
                            }else if(center == "Marine Parade Hawker Center"){
                                Text("84 Marine Parade Central")
                            }
                        }
                        
                    }
                }
            }
            .navigationTitle("Hawker Centers")
        }
        .searchable(text: $searchText, prompt: "Search for hawker center")
    }
 
    var searchResults: [String] {
        if searchText.isEmpty {
            return centers
        } else {
            return centers.filter { $0.contains(searchText) }
        }
    }
}
 
#Preview {
    HawkerCentersView()
}
 
