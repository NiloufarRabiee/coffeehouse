//
//  ContentView.swift
//  coffeehouse
//
//  Created by Niloufar Rabiee on 13/01/25.
//
import SwiftUI

struct LandingPageView: View {
    var body: some View {
        VStack {
           
            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .frame(height: 350)
                .overlay(
                    Text("Image Placeholder")
                        .foregroundColor(.white)
                        .font(.title3)
                )
            
            Spacer()
            
        
            Text("Awaken Your Senses, One Sip at a Time!")
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
            
      
            Text("Indulge in Moments Brewed Just for You.")
                .foregroundColor(.gray)
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
                .padding(.top, 8)
            
            Spacer()
            
            
            Button(action: {
          
            }) {
                Text("Get Started")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, minHeight: 70)
                    .background(Color.orange)
                    .cornerRadius(12)
                    .padding(.horizontal, 80)
            }
            
            Spacer(minLength: 40)
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}


struct LandingPageView_Previews: PreviewProvider {
    static var previews: some View {
        LandingPageView()
    }
}
