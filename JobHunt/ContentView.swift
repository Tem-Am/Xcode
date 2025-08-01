//
//  ContentView.swift
//  JobHunt
//
//  Created by temuulen on 7/24/25.
//

import SwiftUI

struct ContentView: View {
    @State private var goToAddJob = false
    @State private var goListJob = false // this is activate when we press the button
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 0.961, green: 0.961, blue: 0.863).ignoresSafeArea()
                
                VStack(spacing: 10) {
                    Text("Job Hunting is Sucks")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.mint)
                    Image("meme")
                        .resizable()
                        .frame(width: 250.0, height: 300.0)
                        .cornerRadius(15)
                        .aspectRatio(contentMode: .fit)
                        .padding(.all)
                    Button(action: {
                        // Go to add job page
                        goToAddJob = true
                    }) {
                        Text("Add Jobs")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 150, height: 40)
                            .background(Color.mint)
                            .cornerRadius(10)
                            .shadow(color: .gray.opacity(0.5), radius: 5, x: 0, y: 4)
                    }
                    Button(action: { goListJob = true }){
                        Text("List Of Jobs")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 150, height: 40)
                            .background(Color.mint)
                            .cornerRadius(10)
                            .shadow(color: .gray.opacity(0.5), radius: 5, x: 0, y: 4)
                        
                    }
                }
                // Hidden navigationlinks triggered by the button
                .navigationDestination(isPresented: $goToAddJob){
                        AddJobView()
                }
                .navigationDestination(isPresented: $goListJob){
                        ListJobsView()
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
