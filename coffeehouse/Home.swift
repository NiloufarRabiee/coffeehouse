
import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
              
                Spacer(minLength: 0)
                
              
                HStack {
                    VStack(alignment: .leading) {
                        Text("Location")
                            .font(.caption)
                            .foregroundColor(.gray)
                        Text("Via S.Tommasi, 123")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                    }
                    Spacer()
                    
                    HStack {
                        Button(action: {
                         
                        }) {
                            Image(systemName: "location.fill")
                                .foregroundColor(.white)
                                .padding()
                        }
                        
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.gray)
                            .frame(width: 40, height: 40)
                    }
                }
                .padding()

               
                HStack {
                    TextField("Search Coffee", text: .constant(""))
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .foregroundColor(.white)

                    Button(action: {}) {
                        Image(systemName: "slider.horizontal.3")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(10)
                    }
                }
                .padding()

         
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.gray.opacity(0.3))
                        .frame(height: 100)

                    VStack {
                        Text("Promo")
                            .foregroundColor(.red)
                            .bold()
                        Text("Buy one get one FREE")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.white)
                    }
                }
                .padding()

               
                HStack {
                    Button(action: {}) {
                        Text("Cappuccino")
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }
                    Button(action: {}) {
                        Text("Macchiato")
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 1))
                            .foregroundColor(.white)
                    }
                    Button(action: {}) {
                        Text("Latte")
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 1))
                            .foregroundColor(.white)
                    }
                }
                .padding()

           
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                        ForEach(0..<4) { _ in
                            VStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.gray)
                                    .frame(height: 100)
                                
                                Text("Cappuccino")
                                    .foregroundColor(.white)
                                    .bold()
                                Text("With chocolate")
                                    .foregroundColor(.gray)
                                    .font(.caption)
                                Text("$4.59")
                                    .foregroundColor(.white)
                                    .bold()
                                
                                Button(action: {}) {
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(Color.orange)
                                        .clipShape(Circle())
                                }
                            }
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                        }
                    }
                    .padding()
                }

                Spacer()

                HStack {
                    Button(action: {}) {
                        Image(systemName: "house.fill")
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "cart.fill")
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "bell.fill")
                            .foregroundColor(.white)
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.3))
            }
            .background(Color.black.edgesIgnoringSafeArea(.all))
        }
        .statusBar(hidden: false) 
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
