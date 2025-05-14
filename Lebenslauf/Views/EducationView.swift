//
//  EducationView.swift
//  Lebenslauf
//
//  Created by Rylie Castell on 14.05.25.
//

import SwiftUI

struct EducationView: View {
    let education: Education
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 5)
                .padding(.top, 7)
            VStack(alignment: .leading) {
                HStack {
                    Text(
                        String(education.startYear)
                            + (education.endYear != nil
                                ? " - \(education.endYear!)"
                                : "")
                    )
                    .font(
                        .custom("AvenirNext-UltraLightItalic", size: 16)
                    )
                    Text(education.title)
                        .font(.custom("AvenirNext-Medium", size: 16))
                }
                Text(education.school)
                    .font(.custom("Avenir Next", size: 16))
                Text(education.description)
                    .font(.custom("Avenir Next", size: 16))
            }
        }
        .frame(width: 338, alignment: .leading)
    }
}

#Preview {
    EducationView(
        education: Education(
            startYear: 2020,
            endYear: 2024,
            title: "Title",
            school: "School",
            description: "Description"
        )
    )
}
