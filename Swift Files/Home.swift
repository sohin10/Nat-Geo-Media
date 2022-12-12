//
//  Home.swift
//  NatGeo App
//
//  Created by Sohini Pandit on 22/11/22.
//

import SwiftUI

let backgroundcolor = Color.black   

struct Home: View {
    var body: some View {
        
       
        
        ZStack {
            backgroundcolor
                .ignoresSafeArea()
            
            
            //image scroll view
            ScrollView {
                ZStack {
                    VStack (spacing: 0){
                        ForEach(0..<45) { index in
                            ZStack {
                                Image("Photos-\(index)")
                                    .resizable()
                                    
        //                           .aspectRatio(contentMode: .fit)
                                    .frame(
                                                maxWidth: .infinity,
                                                maxHeight: 730
                                            )
                                
                                
                            
                                
                                //like,share,comment
                                    .overlay(
                                        
                                        VStack (spacing: 18){
                                            //heart
                                            Image(systemName: "heart")
                                                .foregroundColor(.white)
                                                .font(.system(size: 30))
                                            .padding(.leading, 360)
                                            Text("3M")
                                                .foregroundColor(.white)
                                                .font(.system(size: 16))
                                                .offset(y:-18)
                                            .padding(.leading, 360)
                                            
                                            
                                            //bookmark
                                            Image(systemName: "bookmark")
                                                .foregroundColor(.white)
                                                .font(.system(size: 30))
                                            .padding(.leading, 360)
                                            .offset(y:-13)
                                            
                                           
                                            //share
                                            Image(systemName: "arrowshape.turn.up.right")
                                                .foregroundColor(.white)
                                                .font(.system(size: 30))
                                            .padding(.leading, 360)
                                            Text("234")
                                                .foregroundColor(.white)
                                                .font(.system(size: 16))
                                                .offset(y:-18)
                                            .padding(.leading, 360)
                                            
                                         //comment
                                            Image(systemName: "ellipsis.message")
                                                .foregroundColor(.white)
                                                .font(.system(size: 30))
                                            .padding(.leading, 360)
                                            Text("11.3K")
                                                .foregroundColor(.white)
                                                .font(.system(size: 16))
                                                .offset(y:-18)
                                            .padding(.leading, 360)
                                            
                                            
                                            //comment
                                               Image(systemName: "ellipsis")
                                                   .foregroundColor(.white)
                                                   .font(.system(size: 30))
                                               .padding(.leading, 360)
                                         
                                            
                                            //photographer profile n name
                                            HStack(alignment: .center) {
                                                Image("prof logo")
                                                    
                                                
                                                 
                                                
                                                ZStack {
                                
                                                    Rectangle()
                                                        .strokeBorder(.yellow.opacity(0.9),lineWidth: 2)
                                                        .frame(width: 125, height: 33)
                                                        .offset(x:-16)
                                                       
//                                                        .foregroundColor(.yellow.opacity(0.7))
                                                    HStack {
                                                        Text("Edward Smith")
                                                            .fontWeight(.heavy)
                                                        .foregroundColor(.white)
                                                       
                                                        Image(systemName: "person.crop.circle.badge.plus")
                                                            .foregroundColor(.white)
                                                            .font(.system(size: 19))
                                                            .padding(.leading,2)
                                                    }
                                                    
                                                   
                                                        
                                                }
                                                
                                                
                                                 
                                                                                                       
                                            }
                                            .padding(.vertical, -95)
                                            .padding(.leading, -204)
                                            
                                         

                                            
                                            //caption
                                            HStack{
                                                VStack(alignment: .leading, spacing: 1) {
                                                    
                                            
                                                    
                                                    Text("Falling leaf")
                                                        .foregroundColor(.white)
                                                        .fontWeight(.bold)
                                                    
                                                    Text("Falling leaf")
                                                        .fontWeight(.regular)
                                                        .foregroundColor(.white)
                                                    
                                                    Text("r#forest #amazon #NatGeo")
                                                        .fontWeight(.thin)
                                                        .foregroundColor(.white)
                                                   
                                                }
                                                
                                                
                                                    
                                            }
                                            .padding(.top, -68)
                                            .padding(.leading, -200)
                                         
                                            
                                           
                                        }
                                            .padding(.top, 360)
                                    
                                )
                                
                                    
                            }
                            
                         
                        }
                        
                       
                        
                    }
                }
                
                
                
            }
            
         
            
            
        }
//        .ignoresSafeArea()
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

//extension View{
//    func getRect()->CGRect{
//        return UIScreen.main.bounds
//    }
//}


//
//HStack{
//    Image("Profile logo")
//}
//.padding(.top, -2868)
//.padding(.leading, -200)
