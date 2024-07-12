//
//  PhotoCard.swift
//  iHawker
//
//  Created by Yuk Jun Lim on 17/5/24.
//

import SwiftUI

struct PhotoCard: View {
    let pic: (name: String, cost: Int)
        
        var body: some View {
            
            VStack {
                       Image(pic.name)
                           .resizable()
                           .scaledToFit()
                           .frame(width: 200, height: 150)
                       
                       Text("\(pic.name) \n $\(pic.cost)")
                    .font(.headline)
                           .foregroundColor(.blue)
                           .padding()
                   }
                   .background(Color.white)
                   .cornerRadius(16)
                   .shadow(radius: 8)
        }
}

