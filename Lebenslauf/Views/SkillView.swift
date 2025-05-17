//
//  SkillView.swift
//  Lebenslauf
//
//  Created by Rylie Castell on 14.05.25.
//

import SwiftUI

struct SkillView: View {
    let skill: Skill
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 5)
                .padding(.top, 7)
            VStack(alignment: .leading) {
                Text(skill.category + ":")
                    .font(Fonts.contentTextMedium)
                    .underline()
                Text(skill.allSkills)
                    .font(Fonts.contentTextRegular)
            }
        }
        .frame(width: 338, alignment: .leading)
    }
}

#Preview {
    SkillView(skill: Skill(category: "Category", allSkills: "Skill, skill, skill, skill"))
}
