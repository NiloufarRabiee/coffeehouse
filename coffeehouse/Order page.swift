//
//  Order page.swift
//  coffeehouse
//
//  Created by Niloufar Rabiee on 25/02/25.
//

import SwiftUI

struct OrderView: View {
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
                Text("Order")
                    .font(.headline)
                    .foregroundColor(.black)
                Spacer()
                Button(action: {
                
                }) {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.black)
                        .font(.title2)
                }
            }
            .padding()
            
           
            HStack {
                Button(action: {}) {
                    Text("Deliver")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: {}) {
                    Text("Pickup")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.2))
                        .foregroundColor(.black)
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal)
            
          
            VStack(alignment: .leading, spacing: 4) {
                Text("Deliver Address")
                    .font(.headline)
                
                Text("Jl.Oisbh youi")
                    .font(.subheadline)
                    .bold()
                
                Text("123 Meadowbrook Avenue, Willowbrook Heights")
                    .foregroundColor(.gray)
                    .font(.footnote)
                
                HStack {
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "pencil")
                            Text("Edit Address")
                        }
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                    }
                    
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "note.text")
                            Text("Add Note")
                        }
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                    }
                }
            }
            .padding()
            
            Divider()
            
     
            HStack {
            
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.gray.opacity(0.3))
                    .frame(width: 50, height: 50)
                    .overlay(
                        Text("Image")
                            .foregroundColor(.white)
                            .font(.caption)
                    )
                
                VStack(alignment: .leading) {
                    Text("Cappuccino")
                        .font(.headline)
                    Text("With chocolate")
                        .foregroundColor(.gray)
                        .font(.footnote)
                }
                
                Spacer()
                
                HStack {
                    Button(action: {}) {
                        Image(systemName: "plus.circle")
                            .font(.title3)
                            .foregroundColor(.black)
                    }
                    
                    Text("1")
                        .font(.headline)
                        .padding(.horizontal, 10)
                    
                    Button(action: {}) {
                        Image(systemName: "minus.circle")
                            .font(.title3)
                            .foregroundColor(.black)
                    }
                }
            }
            .padding()
            
            Divider()
            
          
            HStack {
                Image(systemName: "tag.fill")
                    .foregroundColor(.orange)
                
                Text("1 discount is applied")
                    .font(.subheadline)
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray.opacity(0.1)))
            .padding(.horizontal)
        
            VStack(alignment: .leading, spacing: 8) {
                Text("Payment Summary")
                    .font(.headline)
                
                HStack {
                    Text("Price")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("$4.59")
                        .font(.headline)
                }
                
                HStack {
                    Text("Delivery Fee")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("$2.0")
                        .strikethrough()
                        .foregroundColor(.gray)
                    
                    Text("$1.0")
                        .font(.headline)
                }
                
                Divider()
                
                HStack {
                    Text("Total Payment")
                        .font(.headline)
                    Spacer()
                    Text("$5.59")
                        .font(.headline)
                }
            }
            .padding()
            
            Spacer()
            
        
            VStack {
                HStack {
                    HStack {
                        Image(systemName: "creditcard.fill")
                            .foregroundColor(.orange)
                        Text("Cash")
                            .foregroundColor(.black)
                        Text("$5.59")
                            .font(.headline)
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Image(systemName: "ellipsis")
                            .foregroundColor(.black)
                    }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray.opacity(0.1)))
                .padding(.horizontal)
                
             
                Button(action: {}) {
                    Text("Order")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .cornerRadius(12)
                }
                .padding()
            }
        }
        .background(Color.white.edgesIgnoringSafeArea(.all))
    }
}


struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
