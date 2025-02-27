//
//  Order page.swift
//  coffeehouse
//
//  Created by Niloufar Rabiee on 25/02/25.
//

import SwiftUI

struct OrderView: View {
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        VStack {
               
                VStack(alignment: .leading, spacing: 4) {
                    Text("Deliver Address")
                        .font(.headline)
                    
                    Text("Niloufar Rabiee")
                        .font(.subheadline)
                        .bold()
                    
                    Text("123 Meadowbrook Cal, Willowbrook Heights")
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
                }.frame(maxWidth: .infinity, alignment: .leading)
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
                        .foregroundColor(.accentColor)
                    
                    Text("1 discount is applied")
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color(.secondarySystemBackground)))
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
                                .foregroundColor(.accentColor)
                            Text("Cash")
                                .foregroundColor(.primary)
                            Text("$5.59")
                                .font(.headline)
                                .foregroundColor(.primary)
                        }
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Image(systemName: "ellipsis")
                                .foregroundColor(.black)
                        }
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color(.secondarySystemBackground)))
                    .padding(.horizontal)
                    
                 
                    NavigationLink(destination: DeliveryView()) {
                        Text("Order")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.accentColor)
                            .cornerRadius(12)
                    }
                    .padding()
                }
            }
            .background(Color(.systemBackground).edgesIgnoringSafeArea(.all))
           
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                }
            }
        }
    }



struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
