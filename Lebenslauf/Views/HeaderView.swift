//
//  HeaderView.swift
//  Lebenslauf
//
//  Created by Rylie Castell on 14.05.25.
//

import SwiftUI

struct HeaderView: View {
    static let header: Header = Header(
        userFirstName: "Rylie",
        jobTitles: ["Developer", "Designer", "Illustrator"],
        imageName: "Home_Page"
    )
    
    @State private var visibleJobTitle: String = header.jobTitles[0]
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

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
                Text("Hi, my name is \(HeaderView.header.userFirstName).")
                    .font(Fonts.headerSubtitle)
                    .padding(.top, -110)
                    .offset(x: -50)
                Text(visibleJobTitle)
                    .font(Fonts.headerTitle)
                    .padding(.top, -100)
                    .offset(x: 40)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .onReceive(timer) { _ in
                        var currentIndex = HeaderView.header.jobTitles.firstIndex(of: visibleJobTitle)!
                        switch currentIndex {
                        case 2: currentIndex = 0
                        default: currentIndex += 1
                        }
                        visibleJobTitle = HeaderView.header.jobTitles[currentIndex]
                    }
            }

            GeometryReader { geo in
                let minY = geo.frame(in: .global).minY
                let stickyStart: CGFloat = -50
                    let stickyOffset = minY > stickyStart ? 0 : stickyStart - minY

                Image(HeaderView.header.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 264.12, height: 286)
                    .offset(x: -10, y: 90)
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
