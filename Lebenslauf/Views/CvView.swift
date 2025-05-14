//
//  CvView.swift
//  Lebenslauf
//
//  Created by Rylie Castell on 13.05.25.
//

import SwiftUI

struct CvView: View {
    let experienceArray: [Experience] = [
        Experience(
            title: "AuPair",
            place: "Galway County, Ireland",
            skillsGained: "gained cultural experience and language skills"
        ),
        Experience(
            title: "Federal Voluntary Service at Radio T",
            place: "Chemnitz, Germany",
            skillsGained: "learned communication and teamwork"
        ),
        Experience(
            title: "Various Customer-Focused Jobs",
            skillsGained:
                "worked in logistics and as a call center agent for multiple companies developing problem-solving and customer service skills"
        ),
    ]
    let experienceIntro: String = """
        After completing my secondary education with an average of 1.9,
        I spent time exploring different fields before discovering
        my passion for tech.
        """
    
    let educationArray: [Education] = [Education(startYear: 2023, endYear: nil, title: "Web Development Bootcamp", school: "neuefische", description: "Frontend Web Developing with HTML, CSS, JS, React and Next.js"), Education(startYear: 2023, endYear: nil, title: "Full Stack Development Bootcamp", school: "neuefische", description: "Backend Developing with Java, MongoDB, Docker and Postman, Frontend Developing with TypeScript and React"), Education(startYear: 2025, endYear: 2026, title: "App Development Course", school: "Syntax Institut", description: "UX/UI Design with Figma, iOS Development with Swift, Android Development with Kotlin")]
    let additionalEducationText: String = "I continuously expand my knowledge through self-study, online courses, and personal projects, focusing on modern web and app development technologies."

    var body: some View {
        HeaderView()
        VStack {
            ZStack(alignment: .leading) {
                Color(red: 234 / 255, green: 184 / 255, blue: 42 / 255)
                    .frame(width: 276, height: 27)

                Text("HOW IT ALL STARTED")
                    .font(.custom("DINCondensed-Bold", size: 17))
                    .padding(.leading, 6)
            }
            Text(experienceIntro)
                .font(.custom("Avenir Next", size: 9))
            Spacer()
        }
        .frame(width: 276)
    }
}

#Preview {
    CvView()
}
