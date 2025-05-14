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
                        .font(.custom("AvenirNext-Medium", size: 16))
                    Text(" - " + language.level)
                        .font(.custom("Avenir Next", size: 16))
                }
                if language.additionalInfo != nil {
                    Text(language.additionalInfo!)
                        .font(.custom("Avenir Next", size: 16))
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
