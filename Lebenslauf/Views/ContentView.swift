//
//  ContentView.swift
//  Lebenslauf
//
//  Created by Rylie Castell on 14.05.25.
//

import SwiftUI

struct ContentView: View {

    let experiences: [Experience] = [
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

    let educations: [Education] = [
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

    let skills: [Skill] = [
        Skill(
            category: "Languages",
            allSkills: "JavaScript, TypeScript, HTML, CSS, Java, Swift, Kotlin"
        ),
        Skill(
            category: "Frameworks",
            allSkills: "React, Next.js, Node.js, SwiftUI"
        ),
        Skill(
            category: "Design",
            allSkills: "Figma, Material Design, UX/UI, ProCreate"
        ), Skill(category: "Tools", allSkills: "Git, Postman, Docker, MongoDB"),
    ]

    let languages: [Language] = [
        Language(
            language: "English",
            level: "Level C2",
            additionalInfo: "completed a Business English Course in 2012/13"
        ), Language(language: "German", level: "Native Speaker"),
        Language(
            language: "Japanese",
            level: "JLPT N5",
            additionalInfo: "currently working towards further proficiency"
        ),
    ]

    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                Color(red: 234 / 255, green: 184 / 255, blue: 42 / 255)
                    .frame(width: 338, height: 36)

                Text("HOW IT ALL STARTED")
                    .font(Fonts.contentTitle)
                    .padding(.leading, 6)
            }
            Text(experienceIntro)
                .font(Fonts.contentTextRegular)
            ForEach(experiences, id: \.id) { experience in
                ExperienceView(experience: experience)
            }
        }
        .frame(width: 338)
        VStack {
            ZStack(alignment: .leading) {
                Color(red: 234 / 255, green: 184 / 255, blue: 42 / 255)
                    .frame(width: 338, height: 36)

                Text("EDUCATION")
                    .font(Fonts.contentTitle)
                    .padding(.leading, 6)
            }
            ForEach(educations, id: \.id) { education in
                EducationView(education: education)
            }
            HStack(alignment: .top) {
                Image(systemName: "circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 5)
                    .padding(.top, 7)
                Text(additionalEducationText)
                    .font(Fonts.contentTextRegular)
            }
            .frame(width: 338, alignment: .leading)
            Spacer()
        }
        .frame(width: 338)
        VStack {
            ZStack(alignment: .leading) {
                Color(red: 234 / 255, green: 184 / 255, blue: 42 / 255)
                    .frame(width: 338, height: 36)

                Text("SKILLS & TECH STACK")
                    .font(Fonts.contentTitle)
                    .padding(.leading, 6)
            }
            ForEach(skills, id: \.id) { skill in
                SkillView(skill: skill)
            }
        }
        .frame(width: 338)
        VStack {
            ZStack(alignment: .leading) {
                Color(red: 234 / 255, green: 184 / 255, blue: 42 / 255)
                    .frame(width: 338, height: 36)

                Text("LANGUAGES")
                    .font(Fonts.contentTitle)
                    .padding(.leading, 6)
            }
            ForEach(languages, id: \.id) { language in
                LanguageView(language: language)
            }
        }
        .frame(width: 338)
        Button {
            print("Pressed the Contact Button!")
        } label: {
            Image(systemName: "envelope.front")
            Text("Contact")
        }
        .foregroundStyle(.black)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(
                    Color(red: 234 / 255, green: 184 / 255, blue: 42 / 255)
                )
                .shadow(color: Color.black.opacity(0.3), radius: 6, x: 0, y: 4)
        )
    }
}

#Preview {
    ContentView()
}
