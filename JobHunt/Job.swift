//
//  Job.swift
//  JobHunt
//
//  Created by temuulen on 8/2/25.
//

import Foundation

struct Job: Identifiable, Codable {
    let id: String
    let ID: Int
    let jobName: String
    let company: String
    let appliedDate: String
    let referral: String
    let connectedPeople: String
    let gmail: String
    let result: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case ID = "ID"
        case jobName = "Job Name"
        case company = "Company"
        case appliedDate = "Applied Date"
        case referral = "Referral"
        case connectedPeople = "Connected People"
        case gmail = "Gmail"
        case result = "Result"
    }
}
