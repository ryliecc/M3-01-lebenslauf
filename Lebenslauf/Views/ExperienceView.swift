//
//  ExperienceView.swift
//  Lebenslauf
//
//  Created by Rylie Castell on 14.05.25.
//

import SwiftUI

struct ExperienceView: View {
    let experience: Experience
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 5)
                .padding(.top, 8)
            VStack(alignment: .leading) {
                Text(
                    experience.title
                        + (experience.place != nil
                            ? " in " + experience.place! : "")
                )
                .font(Fonts.contentTextMedium)
                Text(experience.skillsGained)
                    .font(Fonts.contentTextRegular)
            }
        }
        .frame(width: 338, alignment: .leading)
    }
}

#Preview {
    ExperienceView(experience: Experience(title: "Title", place: "Place", skillsGained: "Skills gained"))
}
