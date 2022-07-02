//
//  ContentView.swift
//  cw5.1
//
//  Created by Leena Al Jassar on 02/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State var height = ""
    @State var weight = ""
    @State var bmi = 0.0
    @State var result = ""
    
    var body: some View {
        VStack{
            Image("scale")
                .resizable()
                .frame(width: 200, height: 200)
            Text("ادخل الطول و الوزن")
            .padding()
            .font(.system(size: 30, weight: .semibold, design: .rounded))
            .foregroundColor(Color(red: 0.196, green: 0.355, blue: 0.494))
            
            TextField (("ادخل الطول"), text: $height)
                .multilineTextAlignment(.trailing)
                .padding()
                .frame(width: 350, height: 45)
        
            TextField (("ادخل الوزن"), text: $weight)
                .multilineTextAlignment(.trailing)
                .padding()
                .frame(width: 350, height: 45)
            
            Button(action: {
            bmi =       calculateBMI(height: Double(height)!, weight: Double(weight)!)
                
            result = checkStatus(bmi: bmi)
            }, label: {
                Text("احسب")
                    .padding()
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .background(Color(red: 0.631, green: 0.812, blue: 0.9))
                    .foregroundColor(Color.white)
                    .clipShape(Capsule())

            })
            .padding()
           
          
            Text("BMI = \(bmi,specifier: "%.2f") \n الحالة = \(result)")
                .font(.system(size: 25, weight: .medium, design: .rounded))
                .foregroundColor(Color(red: 0.196, green: 0.355, blue: 0.494))
      
    }
        
    }
    
    func calculateBMI (height: Double, weight: Double) -> Double{
        return weight/(height*height)
    }
    func checkStatus(bmi:Double) -> String {
        if bmi <= 20.0 {
            result = " ضعيف"
        }else if bmi <= 25.0 {
            result =  "جيد"
        }else {
            result = "سمين"
        }
        return result
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
