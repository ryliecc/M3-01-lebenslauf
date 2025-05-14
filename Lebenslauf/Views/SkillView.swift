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
                    .font(.custom("AvenirNext-Medium", size: 16))
                    .underline()
                Text(skill.allSkills)
                    .font(.custom("Avenir Next", size: 16))
            }
        }
        .frame(width: 338, alignment: .leading)
    }
}

#Preview {
    SkillView(skill: Skill(category: "Category", allSkills: "Skill, skill, skill, skill"))
}
