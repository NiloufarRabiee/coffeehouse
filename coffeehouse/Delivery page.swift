//
//  Delivery page.swift
//  coffeehouse
//
//  Created by Niloufar Rabiee on 25/02/25.
//

import SwiftUI

struct DeliveryTrackingView: View {
    var body: some View {
        VStack {
            // Map Placeholder
            ZStack {
                Rectangle()
                    .fill(Color.gray.opacity(0.3)) // Placeholder for the map
                    .frame(height: 300)
                    .overlay(
                        VStack {
                            Image(systemName: "map")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                            Text("Map Placeholder")
                                .foregroundColor(.white)
                                .font(.caption)
                        }
                    )
                
            
                HStack {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "chevron.left")
                            .padding()
                            .background(Circle().fill(Color.white))
                            .shadow(radius: 2)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                   
                    }) {
                        Image(systemName: "mappin.and.ellipse")
                            .padding()
                            .background(Circle().fill(Color.white))
                            .shadow(radius: 2)
                    }
                }
                .padding()
            }
            
          
            VStack(spacing: 10) {
                Text("10 minutes left")
                    .font(.title2)
                    .bold()
                
                Text("Delivery to  Jl.Oisbh youi")
                    .foregroundColor(.gray)
                
              
                HStack {
                    ForEach(0..<3) { index in
                        RoundedRectangle(cornerRadius: 4)
                            .fill(index < 2 ? Color.green : Color.gray.opacity(0.3))
                            .frame(height: 6)
                    }
                }
                .frame(height: 6)
                .padding(.horizontal)
            }
            .padding(.vertical)
            
          
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Image(systemName: "shippingbox.fill")
                        .foregroundColor(.orange)
                        .font(.title2)
                    
                    VStack(alignment: .leading) {
                        Text("Delivery your order")
                            .font(.headline)
                        Text("We deliver your goods to you in the shortest possible time")
                            .foregroundColor(.gray)
                            .font(.footnote)
                    }
                    
                    Spacer()
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray.opacity(0.1)))
            }
            .padding(.horizontal)
            
         
            VStack {
                HStack {
                   
                    Circle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 50, height: 50)
                        .overlay(
                            Text("Img")
                                .foregroundColor(.white)
                                .font(.caption)
                        )
                    
                    VStack(alignment: .leading) {
                        Text("peanut smith")
                            .font(.headline)
                        Text("Personal courier")
                            .foregroundColor(.gray)
                            .font(.footnote)
                    }
                    
                    Spacer()
                    
                    
                    Button(action: {
                
                    }) {
                        Image(systemName: "phone.fill")
                            .foregroundColor(.green)
                            .padding()
                            .background(Circle().fill(Color.white))
                            .shadow(radius: 2)
                    }
                }
                .padding()
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .background(Color.white.edgesIgnoringSafeArea(.all))
    }
}


struct DeliveryTrackingView_Previews: PreviewProvider {
    static var previews: some View {
        DeliveryTrackingView()
    }
}
