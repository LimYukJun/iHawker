//
//  HomeView.swift
//  iHawker
//
//  Created by Yuk Jun Lim on 17/5/24.
//

import SwiftUI
 
struct Food{
    var name:String
    var cost:String
    var location:String
    var rating:String
}
 
struct HomeView: View {
    
    @State private var FSV = true
    
    let foods = [
        Food(name: "Chicken Rice", cost: "6", location: "Newton Food Center #01-13", rating: "3.7"),
        Food(name: "Wanton Noodles", cost: "6", location: "East Coast Lagoon Food Village #45", rating: "4.1"),
        Food(name: "Curry", cost: "7.80", location: "Our Tampines Hub #01-59", rating: "4.2"),
        Food(name: "Nasi Lemak", cost: "$3.50", location: "Marine Parade Hawker Center #01-36", rating: "4"),
        Food(name: "Laksa", cost: "5", location: "Our Tampinese Hub #01-63", rating: "4.8")
        
    ]
 
    @State var food:Food?
    
    var body: some View {
                
        VStack{
            Spacer()
            Text("iHawker").font(.largeTitle)
            Spacer()
            Image(food?.name ?? "")
                .resizable()
                .frame(height: 250)
                .frame(width: 350)
                .cornerRadius(15)
            Spacer()
            Text(food?.name ?? "").font(.title)
            Spacer()
            HStack {
                Text("Cost: $")
                Text(food?.cost ?? "")
            }
            .font(.title2)
            HStack {
                Text("Location:")
                Text(food?.location ?? "")
            }
            .font(.title2)
            HStack {
                Text("Rating:")
                HStack{
                    Text(food?.rating ?? "")
                    Image(systemName: "star")
                    
                    Text("/ 5")
                    Image(systemName: "star")
                }
            }
            .font(.title2)
            Spacer()
            HStack{
                //Spacer()
                VStack{
                    Button("Regenerate"){
                        food = foods.randomElement()!
                    }.padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    Button("Re-take quiz"){
                        FSV = true
                    }.padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
        .background(Color(hue: 0.234, saturation: 0.225, brightness: 0.796, opacity: 0.1))
        .onAppear {
            food = foods.randomElement()!
        }
       
        .fullScreenCover(isPresented: $FSV, onDismiss: {
            food = foods.randomElement()!
            
        }, content: {
            quiz()
        })
        
    }
    
}
 
#Preview {
    HomeView()
}
 
