//
//  ContentView.swift
//  JobHunt
//
//  Created by temuulen on 7/24/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.961, green: 0.961, blue: 0.863).ignoresSafeArea()
            
            VStack {
                Text("Job Hunting is Sucks")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.orange)
                Image("meme")
                    .resizable()
                    .cornerRadius(15)
                    .aspectRatio(contentMode: .fit)
                    .padding(.all)
                
            
            }
            
        }
    }
}

#Preview {
    ContentView()
}
