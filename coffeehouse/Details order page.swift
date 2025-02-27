//
//  Details order page.swift
//  coffeehouse
//
//  Created by Niloufar Rabiee on 25/02/25.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
      
        VStack {
           
            Image("Image 5")
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
         
            VStack(alignment: .leading, spacing: 4) {
                Text("Cappuccino")
                    .font(.title2)
                    .bold()
                
                Text("With chocolate")
                    .foregroundColor(.gray)
                
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("4.9 (259)")
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    HStack {
                        Button(action: {}) {
                            Image(systemName: "paperclip")
                                .foregroundColor(.gray)
                                .padding(8)
                                .background(Color.gray.opacity(0.2))
                                .clipShape(Circle())
                        }
                        Button(action: {}) {
                            Image(systemName: "trash")
                                .foregroundColor(.gray)
                                .padding(8)
                                .background(Color.gray.opacity(0.2))
                                .clipShape(Circle())
                        }
                    }
                }
            }
            .padding(.horizontal)
            
            Divider()
                .padding(.vertical, 8)
            
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Description")
                    .font(.headline)
                
                Text("Experience espresso's boldness, steamed milk's creaminess, and airy foam's delicacy in our classic cappuccino—a harmonious blend of fla..")
                    .foregroundColor(.gray)
                    .font(.body)
                
                Button(action: {}) {
                    Text("Read More")
                        .font(.body)
                        .foregroundColor(.accentColor)
                }
            }
            .padding(.horizontal)
            
          
            VStack(alignment: .leading, spacing: 8) {
                Text("Size")
                    .font(.headline)
                
                Text("Experience espresso's boldness, steamed milk's creaminess, and airy foam's delicacy in our classic cappuccino—a harmonious blend of fla..")
                    .foregroundColor(.gray)
                    .font(.body)
                
                HStack {
                    Button(action: {}) {
                        Text("S")
                            .padding()
                            .frame(width: 50, height: 40)
                            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                    }
                    Button(action: {}) {
                        Text("M")
                            .padding()
                            .frame(width: 50, height: 40)
                            .background(Color.accentColor)
                            .cornerRadius(8)
                            .foregroundColor(.white)
                    }
                    Button(action: {}) {
                        Text("L")
                            .padding()
                            .frame(width: 50, height: 40)
                            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                    }
                }
            }
            .padding(.horizontal)
            
            Spacer()
            
            
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Price")
                            .foregroundColor(.secondary)
                        Text("$4.59")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.accentColor)
                    }
                    Spacer()
                    NavigationLink(destination: OrderView()) {
                        Text("Buy Now")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.accentColor)
                            .cornerRadius(12)
                    }
                }
                
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(12)
            }
            .padding()
        }
        .background(Color(.systemBackground).edgesIgnoringSafeArea(.all))
        
        .navigationBarTitleDisplayMode(.inline)
       
        }
    }



struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
