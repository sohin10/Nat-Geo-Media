//
//  SplashScreen.swift
//  NatGeo App
//
//  Created by Sohini Pandit on 05/12/22.
//

import SwiftUI

struct SplashScreen: View {
    
    //animation
    //    @State var SplashAnimation: Bool = false
    
    //animation on delay
    @State private var isActive = false
    @State private var size = false
    @State private var opacity = 0.2
    
    var body: some View {
        
        if isActive{
            ContentView()
        }else{
            
            ZStack {
                backgroundcolor
//                             ContentView()
                
                ZStack {
                
                        
                        Color(.black)
                            .overlay(
                                Image("splash-3-svgBig")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 138, height: 280)
                                
                                
                            )
                            .mask(
                             
                                Rectangle()
                                    .overlay(
                                        
                                        
                                        Image("Middle")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 80, height: 280)
                                        //                                    .scaleEffect(SplashAnimation ? 25 : 1)
                                            .blendMode(.destinationOut)
                                        
                                    )
                                
                        )
                
                
                    //NAT GEO TEXT
                    Text("NATIONAL")
                        .offset(x: -30, y:118)
//                        .frame(width: 80, height: 280)
                        .foregroundColor(.white)
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                    
                    Text("GEOGRAPHIC")
                        .offset(x: -18, y:135)
//                        .frame(width: 90, height: 280)
                        .foregroundColor(.white)
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                    
                    
                    
                    //on tap toggle
                    //                    .onTapGesture{
                    //                        withAnimation(.easeInOut(duration: 2.5)) {
                    //
                    //                            SplashAnimation.toggle()
                    //                        }
                    //                }
                    
            
                    
                }
                //           .scaleEffect(SplashAnimation ? 25 : 1)
                
                .opacity(opacity)
                .scaleEffect(size ? 18 : 1)
                .onAppear{
                    withAnimation(.easeInOut(duration: 5.5)){
                        self.size = true
                        self.opacity = 5.0
                    }
                }
                
                
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5){
                    withAnimation{
                        self.isActive = true
                    }
                    
                }
            }
            .ignoresSafeArea()
            
            
        }
        
        
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}

