//
//  ContentView.swift
//  NatGeo App
//
//  Created by Sohini Pandit on 22/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
       //Add splash screen here
        
        
        ZStack(){
            
            
        
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 60)
           
            HStack(spacing:0){
                Image("NatGeo logo")
                
                
                Spacer()
                   
                
                
                Image(systemName: "bell.badge")
                    .padding(.leading)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    
              
                Image(systemName: "line.horizontal.3")
                    .padding()
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                
            }
           
           
        }  
       
        

        TabView {
            //newhomepage try
            
//            HomeView()
              
            //home page
            Home()
            //navbar tab items
            .tabItem() {
                Image(systemName: "house")
                Text("Home")
                
            }
            Explore()
                .tabItem() {
                    Image(systemName: "magnifyingglass")
                    Text("Explore")
                }
            Camera()
                .tabItem() {
                    Image(systemName: "camera")
                    Text("Camera")
                }
//            Reels()
//                .tabItem() {
//                    Image(systemName: "play.rectangle")
//                    Text("Reels")
//                }
            
            Messages()
                .tabItem() {
                    Image(systemName: "message")
                    Text("Chat")
                }
            
            Profile()
                .tabItem() {
                    Image(systemName: "person.crop.artframe")
                        .accentColor(.white)
                    Text("Profile")
                    
                }
            
            
        }
        
        .accentColor(.yellow)

        
    }
      
    
}










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


































//DONT USE THIS HOMEVIEW, USE home view file insteAD
//struct HomeView: View {
//    var body: some View {
//        ScrollView{
//
//            ZStack {
//
//
//
//                ZStack {
//                    VStack (spacing:0) {
//                        ForEach(0..<5) { index in
//                            Image("unsplash-\(index)")
//                                .resizable()
//
//                                .frame(
//                                    maxWidth: .infinity,
//                                    maxHeight: 795
//                                )
//                        }
//                        .ignoresSafeArea()
//
//                    }
//
//
//
//                }
//
//
//
//            }
//
//
//        }
//
//
//
//    }
//}


//nav bar Vol.1
//        NavigationView{
//            HStack{
//                Color.yellow.ignoresSafeArea()
//
//            }
//            .toolbar{
//                ToolbarItemGroup(placement: .navigationBarLeading){
//                    HStack{
//                        Image("NatGeo logo")
////                            .resizable()
//                    }
//                }
//                ToolbarItemGroup(placement: .navigationBarTrailing){
//                    HStack{
//                        Image(systemName:"line.horizontal.3")
//                            .foregroundColor(Color.black)
//                    }
//                }
//
//
//            }
//
//        }
//        .accentColor(.yellow)
