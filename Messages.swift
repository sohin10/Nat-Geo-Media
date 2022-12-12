//
//  Messages.swift
//  NatGeo App
//
//  Created by Sohini Pandit on 03/12/22.
//

import SwiftUI

struct Messages: View {
    
    @State var search = ""
    
    let colorr = Color.pink.opacity(0.4)
    var body: some View {
        ZStack{
            //             colorr
            backgroundcolor
            
            VStack(spacing:15){
                
                //message header
                HStack{
                    Text("Messages")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.white.opacity(0.8))
                    
                    Spacer()
                    
                    //edit button
                    Button(action: {
                        
                    }){
                        Image(systemName: "rectangle.and.pencil.and.ellipsis")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                    }
                }
                
                
                
                
                //search bar
                HStack(spacing: 10){
                    
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.black.opacity(0.7))
                        .font(.system(size: 20))
                    
                    TextField("Search Name", text: self.$search)
                    
                }
                .padding()
                .background(Color.yellow)
                .cornerRadius(18)
                
                
                //people profile scroll
                ScrollView(.horizontal, showsIndicators: false){
                    
                    HStack(spacing: 8){
                        
                        Button(action: {
                            
                            
                        }) {
                            
                            VStack {
                                Image("add person")
                                    .offset(y: -7)
                                //                                    .padding(.leading)
                                    .padding(.top,10)
                                    .padding(.bottom)
                                    .padding(.trailing)
                                    .overlay(
                                        Image("add person")
                                            .offset(x:16, y:14)
                                        
                                        
                                    )
                                Text("New Group")
                                //                                    .padding(.leading)
                                    .font(.system(size: 12))
                                    .foregroundColor(.white)
                            }
                            
                        }
                        
                        ForEach(0..<16, id: \.self) {i in
                            
                            Button(action: {
                                
                            }) {
                                
                                Image("People-\(i)")
                                
                            }
                            
                        }
                        
                    }
                    
                    
                }
                Spacer()
                
                
                
                //cells view
                MsgsBody()
                    .offset(y:-20)
                
                
          
            }.padding(.leading)
                    .padding(.trailing)
            
        }
   
        
    }
    
}





//all for cells view
//message body
struct MsgsBody: View {
    
    var body: some View{
        
        
        
        List(data){i in
            
            cellView(data: i)
            
            
        }
        .listStyle(.plain)
        
    }
}


//cells
struct cellView: View {
    
    var data: MsgsData
    
    var body: some View{
        
        
        
        HStack(spacing: 10) {
            
            Image(data.img)
                .overlay(
                Circle()
                    .frame(width: 13, height:13)
                    .foregroundColor(.green)
                    .offset(x:16, y:-24)
                )

            Button(action: {
                
            }){
              
                    
                    VStack(alignment: .leading) {
                        Text(data.name)
                            .fontWeight(.bold)
                        Text(data.msg)
                            .font(.caption)
                    }
                }.foregroundColor(.black)
            
                
                Spacer(minLength: 0)
                
                VStack{
                    Text(data.time)
                    
                }
        }
    }
}




//message list data
struct MsgsData: Identifiable {
    
    var id: Int
    var name: String
    var msg: String
    var time: String
    var img: String
}

var data = [
    
    MsgsData(id: 0, name: "Ronn", msg: "Hey Edward", time: "1sec ago",img: "People-1"),
    MsgsData(id: 1, name: "Emily", msg: "whats up", time: "3min ago",img: "People-2"),
    MsgsData(id: 2, name: "Pierce", msg: "How are", time: "6min ago",img: "People-3"),
    MsgsData(id: 3, name: "Sam", msg: "Hey everyone", time: "30min ago",img: "People-4"),
    MsgsData(id: 4, name: "Emma", msg: "Want to work together", time: "1day ago",img: "People-5"),
    MsgsData(id: 5, name: "Joel", msg: "Hey Edward", time: "1hr ago",img: "People-6"),
    MsgsData(id: 6, name: "Shaun", msg: "whats up", time: "3hrs ago",img: "People-7"),
    MsgsData(id: 7, name: "Riley", msg: "How are", time: "1days ago",img: "People-8"),
    MsgsData(id: 8, name: "Sandra", msg: "Hey everyone", time: "5days ago",img: "People-9"),
    MsgsData(id: 9, name: "Eric", msg: "Want to work together", time: "10day ago",img: "People-10")
]




struct Messages_Previews: PreviewProvider {
    static var previews: some View {
        Messages()
    }
}
