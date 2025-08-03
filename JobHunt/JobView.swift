//
//  JobView.swift
//  JobHunt
//
//  Created by temuulen on 8/2/25.
//

import Foundation

class JobViewModel: ObservableObject {
    @Published var jobs: [Job] = []

    func fetchJobs() {
        guard let url = URL(string: "http://127.0.0.1:3000/jobs") else {
            print("Invalid URL")
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("❌ Error fetching jobs: \(error)")
                return
            }

            guard let data = data else {
                print("❌ No data received")
                return
            }

            do {
                let jobs = try JSONDecoder().decode([Job].self, from: data)
                print("✅ Decoded jobs: \(jobs)")
                DispatchQueue.main.async {
                    self.jobs = jobs
                    print("Jobs loaded: \(jobs.count)")
                }
            } catch {
                print("❌ Decoding error: \(error)")
                if let json = String(data: data, encoding: .utf8) {
                    print("❓ Raw JSON:\n\(json)")
                }
            }
        }.resume()
    }
}
