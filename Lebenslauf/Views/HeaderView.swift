//
//  HeaderView.swift
//  Lebenslauf
//
//  Created by Rylie Castell on 14.05.25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            Text("Hi, my name is Rylie.")
                .font(.custom("AvenirNext-Medium", size: 22))
                .offset(x: -52)
            ZStack {
                Image("Home_Page")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 264.12, height: 286)
                    .offset(x: -90, y: 20)
                    .zIndex(1)
                Text("DEVELOPER")
                    .font(.custom("DINCondensed-Bold", size: 88))
                    .padding(.top, -150)
                    .zIndex(0)
            }
            Spacer()
        }
    }
}

#Preview {
    HeaderView()
}
