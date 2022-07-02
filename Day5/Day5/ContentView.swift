//
//  ContentView.swift
//  Day5
//
//  Created by Leena Al Jassar on 02/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    var numbers = [0,1,2,3,4,5]
    var body: some View {
        
        HStack{
            
            ScrollView(.horizontal){
                HStack{
                ForEach(numbers, id:\.self){ num in
                    Text("\(num)")
                        .padding()
                        .background(Color.teal)
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

//Struct
