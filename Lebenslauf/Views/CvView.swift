//
//  CvView.swift
//  Lebenslauf
//
//  Created by Rylie Castell on 13.05.25.
//

import SwiftUI

struct CvView: View {

    var body: some View {
        ScrollView {
            ZStack(alignment: .top) {
                VStack(spacing: 0) {
                    HeaderView()
                        .zIndex(1)
                    ContentView()
                        .padding(.top, 80)
                        .zIndex(0)
                }
            }
        }
    }
}

#Preview {
    CvView()
}

