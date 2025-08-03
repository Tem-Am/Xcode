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
        NavigationStack {
            ZStack {
                // Subtle gradient background
                LinearGradient(
                    gradient: Gradient(colors: [Color(red: 0.96, green: 0.96, blue: 0.86), Color.white]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()

                VStack(spacing: 24) {
                    Spacer()

                    // Title
                    Text("Job Hunting is Sucks")
                        .font(.system(size: 40, weight: .heavy))
                        .foregroundColor(.mint)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)

                    // Meme image
                    Image("meme")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 300)
                        .cornerRadius(20)
                        .shadow(radius: 10)
                        .padding(.bottom, 16)

                    // Buttons
                    VStack(spacing: 16) {
                        Button(action: { goToAddJob = true }) {
                            Text("Add Jobs")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 48)
                                .background(Color.mint)
                                .cornerRadius(12)
                                .shadow(color: .gray.opacity(0.3), radius: 6, x: 0, y: 4)
                        }

                        Button(action: { goListJob = true }) {
                            Text("List of Jobs")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 48)
                                .background(Color.mint)
                                .cornerRadius(12)
                                .shadow(color: .gray.opacity(0.3), radius: 6, x: 0, y: 4)
                        }
                    }
                    .padding(.horizontal, 40)

                    Spacer()

                    // Social icons
                    HStack(spacing: 32) {
                        // link to linkedin
                        Link(destination: URL(string: "https://www.linkedin.com/in/temuulen-amarjargal/")!){
                            Image("linkedin")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                                .shadow(radius: 4)
                        }
                        // link to github
                        Link(destination: URL(string: "https://github.com/Tem-Am")!){
                            Image("github")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                                .shadow(radius: 4)
                        }
                    }
                    .padding(.bottom, 20)
                }
                .padding(.horizontal)

                // Navigation links
                .navigationDestination(isPresented: $goToAddJob) {
                    AddJobView()
                }
                .navigationDestination(isPresented: $goListJob) {
                    ListJobsView()
                }
            }
        }
    }

}


#Preview {
    ContentView()
}
