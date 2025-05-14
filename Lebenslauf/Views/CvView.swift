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
