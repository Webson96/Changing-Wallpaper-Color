//
//  ContentView.swift
//  Changing Wallpaper Color
//
//  Created by Marcin Weber on 11/02/2020.
//  Copyright © 2020 Marcin Weber. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    
    @State private var changeNewColor = false
    
    @State var color = Color(UIColor.random())
    
    
    
    var body: some View {
            
        
        
         
        ZStack{
            
            Color.green
                
                Spacer()
                .background(color)
            
                
            // Extend lines wallpaper
            
                .edgesIgnoringSafeArea(.all)
            
            
            
                
            
            
            
            
            Text("Wallpaper Color")
                .font(.largeTitle)
            .offset(y: -300)
            
            
                
            
            Button(action: {
                
                self.changeNewColor.toggle()
                self.color = Color(UIColor.random())
                
                      
                
                
            }) {
                Text("Change The Color")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(20)
                    .foregroundColor(Color.white)
                    .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.blue, lineWidth: 5))
                
                
                
                    
            }
        .padding(40)
                
                    
            
        
            
                
                
            .alert(isPresented: $changeNewColor) {
                
                Alert(title: Text("Color Changed 😄"))
                
                
            }
            
            
            
            
            
            if changeNewColor {

                Text("Oki Doki")
                    .font(.largeTitle)
                    .padding()
                    .foregroundColor(Color.red)
                    .offset(y: 120)
               
                

            }
            
            
       
    }
        
            
    }
            
        }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension UIColor {
    static func random() -> UIColor {
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: 1.0)
    }
}
extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}




