//
//  AddJob.swift
//  JobHunt
//
//  Created by temuulen on 7/31/25.
//  This page will get jobs information and store into database

import SwiftUI

struct AddJobView: View {
    
    // Helps to back to other jobs
    @State private var goToMain = false
    @State private var goToListJob = false
    
    var body: some View {
        NavigationStack{ // Helps to navigate between pages
            ZStack{ // Stack in z directions
                // Background color
                Color(red: 0.961, green: 0.961, blue: 0.863).ignoresSafeArea()
                
                VStack{
                    Text("Create job").font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(.gray)
                }
            }
        }
    }
}
