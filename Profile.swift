//
//  Profile.swift
//  NatGeo App
//
//  Created by Sohini Pandit on 22/11/22.
//

import SwiftUI


let colour = Color.black

//grid images
var images: [String] = ["Photos-1", "Photos-2","Photos-3", "Photos-4","Photos-34", "Photos-6","Photos-7", "Photos-8","Photos-9", "Photos-33","Photos-11", "Photos-12","Photos-13", "Photos-14","Photos-15", "Photos-16", "Photos-17", "Photos-18","Photos-19", "Photos-20","Photos-21", "Photos-22","Photos-23", "Photos-24","Photos-25", "Photos-26","Photos-27", "Photos-28","Photos-29", "Photos-30","Photos-31", "Photos-32"]

var columnGrid: [GridItem] = [GridItem(.flexible(), spacing:1) , GridItem(.flexible(), spacing:1) , GridItem(.flexible(), spacing:1) ]



struct Profile: View {
    var body: some View {
        
        ZStack {
//            backgroundcolor
            colour
            
            VStack {
               //profile + name + occupation
                VStack {
                    Image("Profile")
                    Text("Ryan Adams")
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    Text("Wildlife Photographer")
                        .fontWeight(.thin)
                        .foregroundColor(.white)
                }
                .padding()
                
                
                    //following + followers
                HStack {
                    
                    VStack {
                        Text("FOLLOWERS")
                            .fontWeight(.thin)
                        .foregroundColor(.white)
                        
                        Text("54M")
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    
                    VStack {
                        Text("FOLLOWING")
                            .fontWeight(.thin)
                        .foregroundColor(.white)
                        
                        Text("534K")
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                    }
                    
                }
                .padding(.leading,90)
                .padding(.trailing,90)
                
                
                
                HStack (spacing: 22){
                    ZStack {
                        
                        Rectangle()
                            .strokeBorder(.yellow.opacity(0.9),lineWidth: 2)
                            .frame(width: 125, height: 33)
                            .cornerRadius(4)
                        //                            .offset(x:-16)
                        
                        Button(action: {
                            
                        }){
                            Text("Edit Profile")
                                .foregroundColor(.white)
                        }
                    }
                    
                    
                    
                    ZStack {
                        Rectangle()
                            .strokeBorder(.yellow.opacity(0.9),lineWidth: 2)
                            .frame(width: 125, height: 33)
                            .cornerRadius(4)
//                        .offset(x:-16)
                        
                        Button(action: {
                            
                        }){
                            Text("Notifications")
                                .foregroundColor(.white)
                        }
                    }
                    
                    
                    ZStack {
                        Rectangle()
                            .strokeBorder(.yellow.opacity(0.9),lineWidth: 2)
                            .frame(width: 125, height: 33)
                            .cornerRadius(4)
//                        .offset(x:-16)
                        
                        Button(action: {
                            
                        }){
                            Text("Messages")
                                .foregroundColor(.white)
                        }
                    }
                  
                }
                .fontWeight(.medium)
                .padding(.top)
                
                
                //grid layout
                ScrollView(.vertical, showsIndicators: false){
                    LazyVGrid (columns: columnGrid, spacing: 1) {
                        ForEach(0..<15, id: \.self) {
                            Image(images[$0 % images.count])
                                .resizable()
                                .scaledToFill()
                                .frame(width: (UIScreen.main.bounds.width / 3) - 3, height: (UIScreen.main.bounds.width / 2) - 1)
                                .clipped()
                                
                                .overlay(
                                    Image(systemName: "play")
                                        .foregroundColor(.white)
                                )
                            
                            
                                .overlay(
                                    
                                    Text("23M")
                                        .foregroundColor(.white)
                                        .padding(.trailing, 62)
                                        .padding(.top, 188)
                                        .font(.system(size: 12))
                                    
                                        .overlay(
                                            Image(systemName: "heart")
                                                .foregroundColor(.white)
                                                .padding(.trailing, 107)
                                                .padding(.top, 188)
                                                .font(.system(size: 12))
                                            )
                                )
                        }
                        
    //                    Image("unsplash-2")
    //                        .resizable()
    //                        .scaledToFill()
    //                    Image("unsplash-3")
    //                        .resizable()
    //                        .scaledToFill()
                    }
                   
                    
                    
                }
              
                

                
                
                
                
                
                
                
                
                //push everthing to the top
                Spacer()
                
                
                
            }
           
           
        }
        
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
