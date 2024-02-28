//
//  ContentView.swift
//  intro
//
//  Created by Ritik Raman on 01/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isnight = false
    
    var body: some View {
        ZStack{
            backgroundView(isnight: isnight)
            
            VStack{
                
                citytextnameview(cityname: "Bhopal,India")
                weatherview(imagename: isnight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 76
                )
                
                HStack(spacing: 40){
                    
                    weatherdayview(day: "TUE", imagename: "cloud.sun.fill", temperature: 89)
                    weatherdayview(day: "WED", imagename: "sun.max.fill", temperature: 90)
                    weatherdayview(day: "THR", imagename: "sun.snow.fill", temperature: 33)
                    weatherdayview(day: "FRI", imagename: "wind.snow", temperature: 89)
                    weatherdayview(day: "SAT", imagename: "cloud.sun.fill", temperature: 89)
                        
                }
                Spacer()
                Button(action: {
                    
                    isnight.toggle()
                    
                }, label: {
                    
                    weatherbutton(title: "change day time", textcolor: .blue, background: .white)
                    
                })
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct weatherdayview: View {
    var day :  String
    var imagename:String
    var temperature:Int
    
    var body: some View {
        VStack{
            Text(day)
                .font(.system(size: 16 , weight: .medium, design: .default))
                .foregroundStyle(.white)
            Image(systemName:  imagename)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.white)
            
        }
    }
}

struct backgroundView: View {
    var isnight: Bool
    
    var body: some View {
        
        LinearGradient(colors: [isnight ? .black : .blue ,isnight ? .gray: Color("light_blue")], startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct citytextnameview: View{
    var cityname:String
    var body: some View{
        Text(cityname)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct weatherview:View{
    var imagename:String
    var temperature:Int
    
    var body: some View{
        VStack(spacing:10){
            Image(systemName : imagename)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
        }
        .padding(.bottom,50)
    }
}


