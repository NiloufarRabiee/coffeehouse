//
//  LandingPageView.swift
//  coffeehouse
//
//  Created by Niloufar Rabiee on 13/01/25.
//

import SwiftUI

struct LandingPageView: View {
    var body: some View {
        NavigationStack {
            VStack {
           
                Image("background")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 350)
            
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
            
            
                NavigationLink(destination: HomeView()) {
                    Text("Get Started")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, minHeight: 70)
                        .background(Color.accentColor)
                        .cornerRadius(12)
                        .padding(.horizontal, 80)
                }
            
                Spacer(minLength: 40)
            }
            .background(Color.black.edgesIgnoringSafeArea(.all))
        }
    }
}


struct LandingPageView_Previews: PreviewProvider {
    static var previews: some View {
        LandingPageView()
    }
}
