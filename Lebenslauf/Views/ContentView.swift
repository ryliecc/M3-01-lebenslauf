//
//  ContentView.swift
//  Lebenslauf
//
//  Created by Rylie Castell on 14.05.25.
//

import SwiftUI

struct ContentView: View {

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
        After completing my secondary education with an average of 1.9, I spent time exploring different fields before discovering my passion for tech.
        """

    let educationArray: [Education] = [
        Education(
            startYear: 2023,
            endYear: nil,
            title: "Web Development Bootcamp",
            school: "neuefische",
            description:
                "Frontend Web Developing with HTML, CSS, JS, React and Next.js"
        ),
        Education(
            startYear: 2023,
            endYear: nil,
            title: "Full Stack Development Bootcamp",
            school: "neuefische",
            description:
                "Backend Developing with Java, MongoDB, Docker and Postman, Frontend Developing with TypeScript and React"
        ),
        Education(
            startYear: 2025,
            endYear: 2026,
            title: "App Development Course",
            school: "Syntax Institut",
            description:
                "UX/UI Design with Figma, iOS Development with Swift, Android Development with Kotlin"
        ),
    ]
    let additionalEducationText: String =
        "Additionally I continuously expand my knowledge through self-study, online courses, and personal projects, focusing on modern web and app development technologies."

    var body: some View {
        ScrollView {
            VStack {
                ZStack(alignment: .leading) {
                    Color(red: 234 / 255, green: 184 / 255, blue: 42 / 255)
                        .frame(width: 338, height: 27)

                    Text("HOW IT ALL STARTED")
                        .font(.custom("DINCondensed-Bold", size: 18))
                        .padding(.leading, 6)
                }
                Text(experienceIntro)
                    .font(.custom("Avenir Next", size: 12))
                HStack(alignment: .top) {
                    Image(systemName: "circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 5)
                        .padding(.top, 3)
                    VStack(alignment: .leading) {
                        Text(
                            experienceArray[0].title
                                + (experienceArray[0].place != nil
                                    ? " in " + experienceArray[0].place! : "")
                        )
                        .font(.custom("AvenirNextMedium", size: 12))
                        Text(experienceArray[0].skillsGained)
                            .font(.custom("Avenir Next", size: 12))
                    }
                }
                .frame(width: 338, alignment: .leading)
                HStack(alignment: .top) {
                    Image(systemName: "circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 5)
                        .padding(.top, 3)
                    VStack(alignment: .leading) {
                        Text(
                            experienceArray[1].title
                                + (experienceArray[1].place != nil
                                    ? " in " + experienceArray[1].place! : "")
                        )
                        .font(.custom("AvenirNextMedium", size: 12))
                        Text(experienceArray[1].skillsGained)
                            .font(.custom("Avenir Next", size: 12))
                    }
                }
                .frame(width: 338, alignment: .leading)
                HStack(alignment: .top) {
                    Image(systemName: "circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 5)
                        .padding(.top, 3)
                    VStack(alignment: .leading) {
                        Text(
                            experienceArray[2].title
                                + (experienceArray[2].place != nil
                                    ? " in " + experienceArray[2].place! : "")
                        )
                        .font(.custom("AvenirNextMedium", size: 12))
                        Text(experienceArray[2].skillsGained)
                            .font(.custom("Avenir Next", size: 12))
                    }
                }
                .frame(width: 338, alignment: .leading)

                Spacer()
            }
            .frame(width: 338)
            VStack {
                ZStack(alignment: .leading) {
                    Color(red: 234 / 255, green: 184 / 255, blue: 42 / 255)
                        .frame(width: 338, height: 27)

                    Text("EDUCATION")
                        .font(.custom("DINCondensed-Bold", size: 18))
                        .padding(.leading, 6)
                }
                HStack(alignment: .top) {
                    Image(systemName: "circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 5)
                        .padding(.top, 3)
                    VStack(alignment: .leading) {
                        HStack {
                            Text(
                                String(educationArray[0].startYear)
                                    + (educationArray[0].endYear != nil
                                        ? " - \(educationArray[0].endYear!)"
                                        : "")
                            )
                            .font(
                                .custom("AvenirNext-UltraLightItalic", size: 12)
                            )
                            Text(educationArray[0].title)
                                .font(.custom("AvenirNext-Medium", size: 12))
                            Text("- \(educationArray[0].school)")
                                .font(.custom("Avenir Next", size: 12))
                        }
                        Text(educationArray[0].description)
                            .font(.custom("Avenir Next", size: 12))
                    }
                }
                .frame(width: 338, alignment: .leading)
                HStack(alignment: .top) {
                    Image(systemName: "circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 5)
                        .padding(.top, 3)
                    VStack(alignment: .leading) {
                        HStack {
                            Text(
                                String(educationArray[1].startYear)
                                    + (educationArray[1].endYear != nil
                                        ? " - \(educationArray[1].endYear!)"
                                        : "")
                            )
                            .font(
                                .custom("AvenirNext-UltraLightItalic", size: 12)
                            )
                            Text(educationArray[1].title)
                                .font(.custom("AvenirNext-Medium", size: 12))
                            Text("- \(educationArray[1].school)")
                                .font(.custom("Avenir Next", size: 12))
                        }
                        Text(educationArray[1].description)
                            .font(.custom("Avenir Next", size: 12))
                    }
                }
                .frame(width: 338, alignment: .leading)
                HStack(alignment: .top) {
                    Image(systemName: "circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 5)
                        .padding(.top, 3)
                    VStack(alignment: .leading) {
                        HStack {
                            Text(
                                String(educationArray[2].startYear)
                                    + (educationArray[2].endYear != nil
                                        ? " - \(educationArray[2].endYear!)"
                                        : "")
                            )
                            .font(
                                .custom("AvenirNext-UltraLightItalic", size: 12)
                            )
                            Text(educationArray[2].title)
                                .font(.custom("AvenirNext-Medium", size: 12))
                            Text("- \(educationArray[2].school)")
                                .font(.custom("Avenir Next", size: 12))
                        }
                        Text(educationArray[2].description)
                            .font(.custom("Avenir Next", size: 12))
                    }
                }
                .frame(width: 338, alignment: .leading)
                HStack(alignment: .top) {
                    Image(systemName: "circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 5)
                        .padding(.top, 3)
                    Text(additionalEducationText)
                        .font(.custom("Avenir Next", size: 12))
                }
                .frame(width: 338, alignment: .leading)
                Spacer()
            }
            .frame(width: 338)
        }
    }
}

#Preview {
    ContentView()
}
