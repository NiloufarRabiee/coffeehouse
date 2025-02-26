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
          
            HStack {
                Button(action: {
            
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                        .font(.title2)
                }
                Spacer()
                Text("Detail")
                    .font(.headline)
                    .foregroundColor(.black)
                Spacer()
                Button(action: {
                  
                }) {
                    Image(systemName: "heart")
                        .foregroundColor(.black)
                        .font(.title2)
                }
            }
            .padding()
            
      
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.gray.opacity(0.3))
                .frame(height: 200)
                .overlay(
                    Text("Image Placeholder")
                        .foregroundColor(.white)
                        .font(.caption)
                )
                .padding(.horizontal)
            
         
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
                
                Text("Experience espresso's boldness, steamed milk’s creaminess, and airy foam’s delicacy in our classic cappuccino—a harmonious blend of fla..")
                    .foregroundColor(.gray)
                    .font(.body)
                
                Button(action: {}) {
                    Text("Read More")
                        .font(.body)
                        .foregroundColor(.orange)
                }
            }
            .padding(.horizontal)
            
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Size")
                    .font(.headline)
                
                Text("Experience espresso's boldness, steamed milk’s creaminess, and airy foam’s delicacy in our classic cappuccino—a harmonious blend of fla..")
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
                            .background(Color.orange)
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
                            .foregroundColor(.gray)
                        Text("$4.59")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.orange)
                    }
                    Spacer()
                    Button(action: {}) {
                        Text("Buy Now")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.orange)
                            .cornerRadius(12)
                    }
                }
                .padding()
                .background(Color.white)
                .shadow(radius: 5)
            }
        }
        .background(Color.white.edgesIgnoringSafeArea(.all))
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
