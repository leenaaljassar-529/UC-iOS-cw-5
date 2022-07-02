//
//  ContentView.swift
//  cw5.2
//
//  Created by Leena Al Jassar on 02/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State var emojis = ["😁","🤩","😎","😔","😫","😭","🥳","🙂","😱","😑","😍","🥲"]
    
    @State var feeling = ""
    
    var body: some View {
        VStack{
            Text("اختار الايموجي الي يعبر عنك اليوم")
                .font(.system(size: 30, weight: .semibold, design: .rounded))
                .multilineTextAlignment(.center)
                .padding()
            Text("\(feeling)")
                .font(.system(size: 120))
            HStack{
            ScrollView(.horizontal){
                HStack{
                ForEach(emojis, id:\.self){ emoji in
                    Text("\(emoji)")
                        .font(.system(size: 45))
                        .padding()
                        .background(Color(red: 0.996, green: 0.813, blue: 0.217, opacity: 0.6))
                        .clipShape(Circle())
                        .onTapGesture {
                            feeling = emoji
                         
                            
                }
               
                }
                    
                }
        }
               
                
            }
            
          
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
