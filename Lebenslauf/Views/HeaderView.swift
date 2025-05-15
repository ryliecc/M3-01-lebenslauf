//
//  HeaderView.swift
//  Lebenslauf
//
//  Created by Rylie Castell on 14.05.25.
//

import SwiftUI

struct HeaderView: View {
    let header: Header = Header(
        userFirstName: "Rylie",
        jobTitle: "Developer",
        imageName: "Home_Page"
    )

    var body: some View {
        ZStack {
            GeometryReader { geo in
                let minY = geo.frame(in: .global).minY

                Rectangle()
                    .fill(LinearGradient(colors: [Color.white, Color.white.opacity(0)], startPoint: UnitPoint(x: 0.5, y: 0.9), endPoint: .bottom))
                    .frame(width: UIScreen.main.bounds.width, height: 390)
                    .offset(y: -90)
                    .offset(y: minY < 20 ? 20 - minY : 20)
            }
            .frame(height: 286)
            VStack {
                Text("Hi, my name is \(header.userFirstName).")
                    .font(.custom("AvenirNext-Medium", size: 22))
                    .padding(.top, -120)
                    .offset(x: -50)
                Text(header.jobTitle.uppercased())
                    .font(.custom("DINCondensed-Bold", size: 88))
                    .padding(.top, -90)
            }

            GeometryReader { geo in
                let minY = geo.frame(in: .global).minY
                let stickyStart: CGFloat = -50
                    let stickyOffset = minY > stickyStart ? 0 : stickyStart - minY

                Image(header.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 264.12, height: 286)
                    .offset(x: -20, y: 90)
                    .offset(y: stickyOffset)
                    .zIndex(3)
            }
            .frame(height: 286)

        }
        Spacer()
    }
}

#Preview {
    HeaderView()
}
