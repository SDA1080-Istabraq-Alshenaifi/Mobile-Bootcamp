//
//  Scroll_Interface.swift
//  HW-Interfaces
//
//  Created by istabraq on 19/07/1445 AH.
//

import SwiftUI

struct Scroll_Interface: View {
    var body: some View {
        VStack {
            HStack {
                Image("image1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .padding()
                VStack (alignment: .leading)
                {
                    Text("Good Morning 👋")
                        .foregroundColor(.black) // Adjust the color as needed
                    HStack {
                        Text("Andrew Ainsley")
                            .bold()
                    }
                    
                }
                Spacer()
                
                Button {
                    // ACTION
                } label: {
                    Circle()
                        .fill(Color.white)
                        .shadow(color: Color.black.opacity(0.2), radius: 6)
                        .frame(width: 50, height: 50)
                        .overlay {
                            Image(systemName: "bell.badge")
                                .font(.title3)
                                .fontWeight(.light)
                                .foregroundColor(.black)
                        }.padding()
                }
            }
            ZStack(alignment: .leading){
                HStack{
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(.gray)
                        .font(.system(size: 20))
                        .fontWeight(.thin)
                    Text("Search")
                        .opacity(0.3)
                    Spacer()
                    
                    Image(systemName: "slider.horizontal.3")
                        .foregroundStyle(.blue)
                        .font(.system(size: 25))
                        .padding()
                    
                }
                .padding(.leading)
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(.gray.opacity(0.1))
                    .frame(height: 60)
                
            }.padding()
            
            HStack {
                Text("Featured")
                    .font(.callout)
                    .bold()
                    .padding()
                
                Spacer() // Add Spacer to push "See All" to the right
                
                Text("See All")
                    .font(.callout)
                    .foregroundStyle(.blue)
                    .bold()
                    .padding()
            }
            //.frame(maxWidth: .infinity) // Expand HStack to fill the width
        }
        ScrollView {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        image11
                        image12
                        image13
                        image11
                        image12
                        
                    }
                    .frame(height: 300)
                }
            }
            HStack {
                Text("Our Recommendation")
                    .font(.callout)
                    .bold()
                    .padding()
                
                Spacer()
                
                Text("See All")
                    .font(.callout)
                    .foregroundStyle(.blue)
                    .bold()
                    .padding()
            }
            
            HStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        Button1
                        Button2
                        Button3
                        Button4
                    }
                }
            }
            HStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 40) { // Add spacing between vertical images
                        ForEach(0..<4) { _ in
                            HStack(spacing: 20) { // Add spacing between horizontal images
                                ForEach(0..<2) { _ in
                                    image21
                                }
                            }
                        }
                    }
                }
            }
        }
        VStack (spacing: 0){
            HStack(spacing: 30) {
                Button(action: {}) {
                    VStack {
                        Image(systemName: "house")
                            .font(.title)
                            .foregroundColor(.blue)
                        Text("Home")
                            .font(.caption2)
                            .foregroundColor(.blue)
                    }
                }
                
                Button(action: {}) {
                    VStack{
                        Image(systemName: "magnifyingglass")
                            .font(.title)
                            .foregroundColor(.gray)
                        Text("Explore")
                            .font(.caption2)
                            .foregroundColor(.gray)
                    }
                }
                
                Button(action: {}) {
                    VStack{
                        Image(systemName: "heart")
                            .font(.title)
                            .foregroundColor(.gray)
                        Text("Favourite")
                            .font(.caption2)
                            .foregroundColor(.gray)
                    }
                }
                
                Button(action: {}) {
                    VStack{
                        Image(systemName: "ellipsis.message")
                            .font(.title)
                            .foregroundColor(.gray)
                        Text("Message")
                            .font(.caption2)
                            .foregroundColor(.gray)
                    }
                }
                
                Button(action: {}) {
                    VStack{
                        Image(systemName: "person.crop.circle")
                            .font(.title)
                            .foregroundColor(.gray)
                        Text("Profile")
                            .font(.caption2)
                            .foregroundColor(.gray)
                    }
                }          }
            .padding(.bottom)
        }
    }
}
                
        
    

    var image11: some View {
        ZStack {
            // Image
            Image("Villa-image")
                .resizable()
                .frame(width: 200, height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .padding()
            
            // Overlay views
            VStack {
                Spacer()
                VStack(alignment: .leading) {
                    Text("Modernica Apartme...")
                        .bold()
                        .font(.headline)
                        .foregroundStyle(.white)
                    
                    Text("New York. US")
                        .font(.caption2)
                        .foregroundStyle(.white)
                }.padding(.horizontal)
                
                
                HStack {
                    HStack{
                        Text("$29")
                            .bold()
                            .font(.caption2)
                            .foregroundStyle(.white)
                            .frame(width: 70)
                        
                        Text("/night")
                            .font(.caption2)
                            .foregroundStyle(.white)
                            .padding(.horizontal,-30)
                    }
                    
                    Spacer()
                    Image(systemName: "heart")
                        .foregroundColor(.white)
                        .bold()
                        .font(.system(size: 25))
                        .frame(width: 50, height: 40)
                        .padding()
                    
                }
            }
            
            VStack{
                HStack{
                    Spacer()
                    
                    ZStack {
                        Color.white.opacity(0.8)
                            .frame(width: 60, height: 25)
                            .clipShape(RoundedRectangle(cornerRadius: 9))
                            .shadow(radius: 4)
                            .padding()
                        HStack {
                            Image(systemName: "star.fill")
                                .foregroundStyle(.yellow)
                                .padding(.horizontal, -5)
                            
                            
                            Text("4.8")
                                .foregroundColor(.blue)
                                .bold()
                                .padding(.horizontal, -3)
                        }
                    }.padding()
                }
                .padding(.vertical,-170)
            }
            Spacer()
        }
    }
    var image12: some View{
        
        ZStack {
            // Image
            Image("image2")
                .resizable()
                .frame(width: 200, height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .padding()
            
            // Overlay views
            VStack {
                Spacer()
                VStack(alignment: .leading) {
                    Text("Modernica Apartme...")
                        .bold()
                        .font(.headline)
                        .foregroundStyle(.white)
                    
                    Text("Saudi Arabia. Riyadh")
                        .font(.caption2)
                        .foregroundStyle(.white)
                }.padding(.horizontal)
                
                
                HStack {
                    HStack{
                        Text("$30")
                            .bold()
                            .font(.caption2)
                            .foregroundStyle(.white)
                            .frame(width: 70)
                        
                        Text("/night")
                            .font(.caption2)
                            .foregroundStyle(.white)
                            .padding(.horizontal,-30)
                    }
                    
                    Spacer()
                    Image(systemName: "heart")
                        .foregroundColor(.white)
                        .bold()
                        .font(.system(size: 25))
                        .frame(width: 50, height: 40)
                        .padding()
                    
                }
            }
            
            VStack{
                HStack{
                    Spacer()
                    
                    ZStack {
                        Color.white.opacity(0.8)
                            .frame(width: 60, height: 25)
                            .clipShape(RoundedRectangle(cornerRadius: 9))
                            .shadow(radius: 4)
                            .padding()
                        HStack {
                            Image(systemName: "star.fill")
                                .foregroundStyle(.yellow)
                                .padding(.horizontal, -5)
                            
                            
                            Text("4.8")
                                .foregroundColor(.blue)
                                .bold()
                                .padding(.horizontal, -3)
                        }
                    }.padding()
                }
                .padding(.vertical,-170)
            }
            Spacer()
        }
    }
    var image13: some View{
        
        ZStack {
            // Image
            Image("image3")
                .resizable()
                .frame(width: 200, height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .padding()
            
            // Overlay views
            VStack {
                Spacer()
                VStack(alignment: .leading) {
                    Text("Modernica Apartme...")
                        .bold()
                        .font(.headline)
                        .foregroundStyle(.white)
                    
                    Text("Saudi Arabia. Jeddah")
                        .font(.caption2)
                        .foregroundStyle(.white)
                }.padding(.horizontal)
                
                
                HStack {
                    HStack{
                        Text("$30")
                            .bold()
                            .font(.caption2)
                            .foregroundStyle(.white)
                            .frame(width: 70)
                        
                        Text("/night")
                            .font(.caption2)
                            .foregroundStyle(.white)
                            .padding(.horizontal,-30)
                    }
                    
                    Spacer()
                    Image(systemName: "heart")
                        .foregroundColor(.white)
                        .bold()
                        .font(.system(size: 25))
                        .frame(width: 50, height: 40)
                        .padding()
                    
                }
            }
            
            VStack{
                HStack{
                    Spacer()
                    
                    ZStack {
                        Color.white.opacity(0.8)
                            .frame(width: 60, height: 25)
                            .clipShape(RoundedRectangle(cornerRadius: 9))
                            .shadow(radius: 4)
                            .padding()
                        HStack {
                            Image(systemName: "star.fill")
                                .foregroundStyle(.yellow)
                                .padding(.horizontal, -5)
                            
                            
                            Text("4.8")
                                .foregroundColor(.blue)
                                .bold()
                                .padding(.horizontal, -3)
                        }
                    }.padding()
                }
                .padding(.vertical,-170)
            }
            Spacer()
        }
    }
    var Button1: some View {
        Button(action: {}) {
            Text("✅ All")
                .font(.callout)
                .foregroundColor(.white)
                .frame(width: 48, height: 8)
                .bold()
                .padding()
                .background(Color.blue)
                .cornerRadius(20)
        }
        
    }
    var Button2: some View {
        Button(action: {}) {
            Text("🏡 House")
                .font(.callout)
                .foregroundColor(.blue)
                .padding(.vertical, 4)
                .padding(.horizontal, 12)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.blue, lineWidth: 2))
        }
        
    }
    var Button3: some View {
        Button(action: {}) {
            Text("🏠 Villa")
                .font(.callout)
                .foregroundColor(.blue)
                .padding(.vertical, 4)
                .padding(.horizontal, 12)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.blue, lineWidth: 2))
        }
    }
    var Button4: some View {
        Button(action: {}) {
            Text("🏢 Apartment")
                .font(.callout)
                .foregroundColor(.blue)
                .padding(.vertical, 4)
                .padding(.horizontal, 12)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.blue, lineWidth: 2))
        }
    }
var image21: some View {
    RoundedRectangle(cornerRadius: 25.0)
        .fill(Color.white)
        .shadow(color: Color.black.opacity(0.2), radius: 6)
        .frame(width: 150, height: 200) // Adjusted to be square
    
        .overlay {
            // Overlay views
            VStack {
                Image("image2")
                            .resizable()
                            .frame(width: 150, height: 125)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            // Spacer()
                VStack(alignment: .leading) {
                    Text("Modernica Apartme...")
                        .bold()
                        .font(.callout)
                        .foregroundStyle(.black)
                    
                    Text("New York. US")
                        .font(.caption2)
                        .foregroundStyle(.black)
                }//.padding(.horizontal)
                
                HStack {
                    HStack{
                        Text("$29")
                            .bold()
                            .font(.callout)
                            .foregroundStyle(.blue)
                            .frame(width: 70)
                        
                        Text("/night")
                            .font(.caption2)
                            .foregroundStyle(.black)
                            .padding(.horizontal,-20)
                    }
                    
                    Spacer()
                    Image(systemName: "heart")
                        .foregroundColor(.blue)
                        .font(.system(size: 25))
                        .frame(width: 20, height: 20)
                        .padding()
                    
                }
            }
            
            VStack{
                HStack{
                    Spacer()
                    ZStack {
                        Color.white.opacity(0.8)
                            .frame(width: 60, height: 25)
                            .clipShape(RoundedRectangle(cornerRadius: 9))
                            .shadow(radius: 4)
                            .padding()
                        HStack {
                            Image(systemName: "star.fill")
                                .foregroundStyle(.yellow)
                                .padding(.horizontal, -5)
                            
                            Text("4.8")
                                .foregroundColor(.blue)
                                .bold()
                            .padding(.horizontal, -3)
                        }
                    }.padding(.horizontal, -5)
                }
                .padding(.vertical,-106)
            }
            
            
        }
}


    


#Preview {
    Scroll_Interface()
}
