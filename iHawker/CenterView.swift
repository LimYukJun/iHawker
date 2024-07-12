//
//  CenterView.swift
//  iHawker
//
//  Created by Yuk Jun Lim on 17/5/24.
//

import SwiftUI

struct CenterView: View {
    
    @State private var cover = false
    @State private var cover2 = false
    @State private var cover3 = false
    
    var body: some View {
        
        ScrollView {

            
            VStack {
                
                
                Text("Our Tampines")
                    .frame(maxWidth: .infinity, alignment: .top)
                    .font(.system(size:50))
                    .fontWeight(.black)
                    .font(.largeTitle)
                
                
                Text("Hub")
                
                    .font(.system(size:45))
                    .fontWeight(.black)
                    .font(.largeTitle)
                Text("   1 Tampines Walk, Singapore 528523")
                    .frame(maxWidth: .infinity, alignment: .top)
                    .italic()
                    .fontWeight(.black)
                    .font(.system(size:30))
                
                Link("< Open in Maps >", destination:URL(string: "https://maps.apple.com/?address=495%20Tampines%20Ave%205,%20Singapore&auid=8624667795828453557&ll=1.355582,103.939408&lsp=9902&q=Our%20Tampines%20Hub%20Hawker%20Centre")!)
                    .frame(maxWidth: .infinity)
                    .padding()
                
                
                Text("Stalls")
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .font(.title)
                    .bold()
                
                Button{
                    cover = true
                    
                }label: {
                    Text("Chicken Rice Stall")
                        .frame(maxWidth: .infinity, alignment:.bottom)
                }
                .padding()
                .buttonStyle(.borderedProminent)
                .background(Color(.blue))
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(.horizontal)
                .padding()
                
                
                
                Button{
                    cover3 = true
                }label: {
                    Text("Indian stall")
                        .frame(maxWidth: .infinity)
                }
                .padding()
                .buttonStyle(.borderedProminent)
                .background(Color(.blue))
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(.horizontal)
                .padding()
                
                
                
                Button{
                    cover2 = true
                }label: {
                    Text("Western Stall")
                        .frame(maxWidth: .infinity)
                }
                .padding()
                .buttonStyle(.borderedProminent)
                .background(Color(.blue))
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(.horizontal)
                .padding()
            }
            
            
            .sheet(isPresented: $cover, content: {
                
                stallView()
            })
            .sheet(isPresented: $cover2, content: {
                stallView2()
            })
            .sheet(isPresented: $cover3, content: {
                stallView3()
                
            })
            
        }
        .background(Color(hue: 0.234, saturation: 0.225, brightness: 0.796, opacity: 0.1))

        
        
        
    }
}






#Preview {
    CenterView()
}

