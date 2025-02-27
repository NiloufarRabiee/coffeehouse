import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            // Status Bar Padding
            Spacer(minLength: 0)
            
       
            HStack {
                VStack(alignment: .leading) {
                    Text("Location")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    Text("Via S.Tommasi, 123")
                        .font(.title3.bold())
                }
                Spacer()
                
                HStack {
                    Button {
                    
                    } label: {
                        Image(systemName: "location.fill")
                            .imageScale(.large)
                            .foregroundColor(.accentColor)
                    }
                    
                    Circle()
                        .fill(Color(.systemGray5))
                        .frame(width: 40, height: 40)
                        .overlay(
                            Image(systemName: "person.crop.circle.fill")
                                .imageScale(.large)
                                .foregroundColor(.secondary)
                        )
                }
            }
            .padding()

          
            HStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.secondary)
                    TextField("Search Coffee", text: .constant(""))
                }
                .padding(10)
                .background(Color(.systemGray6))
                .cornerRadius(10)

                Button {
                 
                } label: {
                    Image(systemName: "slider.horizontal.3")
                        .imageScale(.large)
                        .padding(10)
                        .background(Color.accentColor)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                }
            }
            .padding()
        
      
            ZStack(alignment: .leading) {
                Image("pic top")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
               

                VStack(alignment: .leading) {
                    Text("Promo")
                        .foregroundColor(.red)
                        .fontWeight(.semibold)
                    Text("Buy one get one FREE")
                        .font(.title3.bold())
                }
                .padding(.leading, 20)
            }
            .padding()
            


            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Button {
                  
                    } label: {
                        Text("Cappuccino")
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .background(Color.accentColor)
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                    }
                    
                    ForEach(["Macchiato", "Latte"], id: \.self) { category in
                        Button {
                          
                        } label: {
                            Text(category)
                                .padding(.horizontal, 16)
                                .padding(.vertical, 8)
                                .background(Color(.systemGray6))
                                .foregroundColor(.primary)
                                .clipShape(Capsule())
                        }
                    }
                }
                .padding()
            }

        
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                    VStack {
                        
                        Image("Image 1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 120)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
               
                        
                        VStack {
                            Text("Cappuccino")
                                .font(.headline)
                            Text("With chocolate")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            
                            HStack {
                                Text("$4.59")
                                    .font(.subheadline.bold())
                                Spacer()
                                NavigationLink(destination: DetailView()) {
                                    Image(systemName: "plus")
                                        .imageScale(.medium)
                                        .padding(8)
                                        .background(Color.accentColor)
                                        .foregroundColor(.white)
                                        .clipShape(Circle())
                                }
                            }
                        }
                        .padding(.horizontal, 8)
                    }
                    .padding(8)
                    .background(Color(.systemGray6))
                    .cornerRadius(12)
                    
                    VStack {
                        
                        Image("Image 2")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 120)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
               
                        
                        VStack {
                            Text("Espresso")
                                .font(.headline)
                            Text("With Milk")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            
                            HStack {
                                Text("$2.59")
                                    .font(.subheadline.bold())
                                Spacer()
                                NavigationLink(destination: DetailView()) {
                                    Image(systemName: "plus")
                                        .imageScale(.medium)
                                        .padding(8)
                                        .background(Color.accentColor)
                                        .foregroundColor(.white)
                                        .clipShape(Circle())
                                }
                            }
                        }
                        .padding(.horizontal, 8)
                    }
                    .padding(8)
                    .background(Color(.systemGray6))
                    .cornerRadius(12)
                    
                    VStack {
                        
                        Image("Image 3")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 120)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
               
                        
                        VStack {
                            Text("Coffeemaciato")
                                .font(.headline)
                            Text("With chocolate")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            
                            HStack {
                                Text("$5.00")
                                    .font(.subheadline.bold())
                                Spacer()
                                NavigationLink(destination: DetailView()) {
                                    Image(systemName: "plus")
                                        .imageScale(.medium)
                                        .padding(8)
                                        .background(Color.accentColor)
                                        .foregroundColor(.white)
                                        .clipShape(Circle())
                                }
                            }
                        }
                        .padding(.horizontal, 8)
                    }
                    .padding(8)
                    .background(Color(.systemGray6))
                    .cornerRadius(12)
                    
                    VStack {
                        
                        Image("Image 4")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 120)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .scaledToFill()
               
                        
                        VStack {
                            Text("Coffee")
                                .font(.headline)
                            Text("With Milk")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            
                            HStack {
                                Text("$3.99")
                                    .font(.subheadline.bold())
                                Spacer()
                                NavigationLink(destination: DetailView()) {
                                    Image(systemName: "plus")
                                        .imageScale(.medium)
                                        .padding(8)
                                        .background(Color.accentColor)
                                        .foregroundColor(.white)
                                        .clipShape(Circle())
                                }
                            }
                        }
                        .padding(.horizontal, 8)
                    }
                    .padding(8)
                    .background(Color(.systemGray6))
                    .cornerRadius(12)
                }
                .padding()
            }

            Spacer()

            // Bottom navigation remains the same
            HStack {
                ForEach(["house.fill", "heart.fill", "cart.fill", "bell.fill"], id: \.self) { icon in
                    Button {
                        // Tab action
                    } label: {
                        Image(systemName: icon)
                            .imageScale(.large)
                            .foregroundColor(icon == "house.fill" ? .accentColor : .secondary)
                    }
                    if icon != "bell.fill" { Spacer() }
                }
            }
            .padding()
            .background(Color(.systemGray6))
        }
        .background(Color(.systemBackground))
    }
}


// Preview remains the same
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
