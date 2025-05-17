//
//  LanguageView.swift
//  Lebenslauf
//
//  Created by Rylie Castell on 14.05.25.
//

import SwiftUI

struct LanguageView: View {
    let language: Language

    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 5)
                .padding(.top, 7)
            VStack(alignment: .leading) {
                HStack {
                    Text(language.language)
                        .font(Fonts.contentTextMedium)
                    Text(" - " + language.level)
                        .font(Fonts.contentTextRegular)
                }
                if language.additionalInfo != nil {
                    Text(language.additionalInfo!)
                        .font(Fonts.contentTextRegular)
                }
            }
        }
        .frame(width: 338, alignment: .leading)
    }
}

#Preview {
    LanguageView(
        language: Language(
            language: "English",
            level: "C2 Level",
            additionalInfo: "additional Infos"
        )
    )
}
