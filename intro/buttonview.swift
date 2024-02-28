//
//  buttonview.swift
//  intro
//
//  Created by Ritik Raman on 01/01/24.
//
import SwiftUI

struct weatherbutton:View{
    var title:String
    var textcolor:Color
    var background:Color
    
    var body: some View{
        Text(title)
            .frame(width: 280,height: 50)
            .foregroundColor(textcolor)
            .background(background)
            .font(.system(size: 20,weight: .bold))
            .cornerRadius(10)
    }
}
