//
//  stallView.swift
//  iHawker
//
//  Created by Yuk Jun Lim on 17/5/24.
//

import SwiftUI

struct stallView: View {
    let pic = [
            ("Chicken Rice", 6),
            ("Wanton Noodles", 6)
        ]
        
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack (alignment: .leading){
                    
                    Text("Stall Information")
                        .bold()
                    
                    CaptionedPhoto(assetName: "chickenricestall", captionText: "Cuisine: Chinese \n Store Number: #01-04")
                    
                }
                .padding(.horizontal)
                .navigationTitle("Chicken Rice Stall")
                .navigationTitle("Chicken Rice Stall")
                
                
                VStack {
                    Text("Foods Available")
                        .bold()
                        .font(.title)
                        .padding(20)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(pic.indices, id: \.self) { index in
                                PhotoCard(pic: self.pic[index])
                                    .frame(width: 250, height: 250)
                            }
                            .padding(.leading, 5)
                        }
                    }
                    .frame(height: 250)
                }
                
            }
            .background(Color(hue: 0.234, saturation: 0.225, brightness: 0.796, opacity: 0.1))

        }
        
        
    }
    
}


#Preview {
    stallView()
}

