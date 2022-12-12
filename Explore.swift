//
//  Explore.swift
//  NatGeo App
//
//  Created by Sohini Pandit on 01/12/22.
//

import SwiftUI


struct Explore: View {
    
    
    

    var body: some View {
        
        ZStack {
            //background color
            backgroundcolor
            
           
            VStack (spacing: 10 ){
               
                VStack {
                    
                    //search bar
                    SearchBar()
                    
                    //All Tags
                    AllTags()
                    
                } .padding(.leading,5)
                    .padding(.trailing,5)
                
              
                
                //explore grid view
                ExploreGrid()
                
//                Spacer()
//
                
                //end } of vstack
            }
            .padding(.vertical,5)
            
            //zstack end }
        }
      
      
    }
}

struct Explore_Previews: PreviewProvider {
    static var previews: some View {
        Explore()
    }
}

struct SearchBar: View {
    @State var search = ""
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            TextField("Search", text: self.$search)
            
        }
        .frame(width: .infinity)
        .padding()
        .background(Color.yellow)
        .font(.system(size:20))
        .cornerRadius(18)
    }
}


//tags section single
struct Tag: View {
    
    var text: String = "Wildlife"
    
    
    var body: some View {
        HStack{
            
            Button(action: {
                
            }){
                Text(text)
                    .font(.system(size: 16))
                    .foregroundColor(.white)
                    .padding(.vertical,6)
                    .padding(.horizontal)
                    .overlay(
                        Rectangle()
                            .strokeBorder(.yellow.opacity(0.9),lineWidth: 3)
                            .cornerRadius(4)
                        
                    )
            }
        }
    }
}



//All tags scrollview
struct AllTags: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                Tag(text: "Ocean")
                Tag(text: "Forest")
                Tag(text: "Birds")
                Tag(text: "Human Portrait")
                Tag(text: "Mountains")
                Tag(text: "Insects")
                Tag(text: "Snow")
                Tag(text: "Space")
                Tag(text: "Amazon Rainforest")
                Tag(text: "Mammals")
                
            }
        }
        
    }
}


//Explore grid view
struct ExploreGrid: View {
    var gridimg: [String] = ["Photos-4", "Photos-33","Photos-15", "Photos-24","Photos-12", "Photos-6","Photos-8", "Photos-1","Photos-23", "Photos-40","Photos-35", "Photos-26","Photos-37", "Photos-32","Photos-19", "Photos-11", "Photos-2", "Photos-3","Photos-45", "Photos-4","Photos-5", "Photos-16","Photos-8", "Photos-7","Photos-10", "Photos-9","Photos-14", "Photos-15","Photos-16", "Photos-28","Photos-17", "Photos-18","Photos-12", "Photos-2","Photos-3", "Photos-4","Photos-5", "Photos-6","Photos-7", "Photos-8","Photos-9", "Photos-10","Photos-11", "Photos-12","Photos-13", "Photos-14","Photos-15", "Photos-16", "Photos-17", "Photos-18","Photos-19", "Photos-20","Photos-21", "Photos-22","Photos-23", "Photos-24","Photos-25", "Photos-26","Photos-27", "Photos-28","Photos-29", "Photos-30","Photos-31", "Photos-32"]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            LazyVGrid (columns: columnGrid, spacing: 1) {
                ForEach(0..<27, id: \.self) {
                    Image(gridimg[$0 % gridimg.count])
                        .resizable()
                        .scaledToFill()
                        .frame(width: (UIScreen.main.bounds.width / 3) - 3, height: (UIScreen.main.bounds.width / 2) - 1)
                        .clipped()
                    
//                        .overlay(
//                            Image(systemName: "play")
//                                .foregroundColor(.white)
//                        )
                        
                }
                 .scaledToFill()
            }
        }
    }
}
