//
//  Delivery page.swift
//  coffeehouse
//
//  Created by Niloufar Rabiee on 25/02/25.
//

import SwiftUI

struct DeliveryView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            
            
            ZStack(alignment: .leading) {
                Image("map")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 400)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
               
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
                   
                   
                            Image("man")
                        .clipShape(Circle())
                                .foregroundColor(.white)
                                .font(.caption)
                        
                    
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
                        Image(systemName: "phone.circle.fill")
                            .resizable()
                            .frame(width: 55, height: 55)
                            .foregroundColor(.green)
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
                        
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                        
                    }
                }
                .padding()
            }
            .padding(.horizontal)
            
            Spacer()
        }
        
    }
       
}


struct DeliveryTrackingView_Previews: PreviewProvider {
    static var previews: some View {
        DeliveryView()
    }
}
