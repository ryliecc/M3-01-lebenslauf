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
    
    @State private var visibleJobTitle: String = ""
    @State private var currentTextIndex = 0
    @State private var charIndex = 0
    
    let typingSpeed = 0.1

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
                    .frame(height: 0)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .onAppear {
                        startTyping()
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
    
    func startTyping() {
        visibleJobTitle = ""
        charIndex = 0
        let fullJobTitle = HeaderView.header.jobTitles[currentTextIndex]
        
        Timer.scheduledTimer(withTimeInterval: typingSpeed, repeats: true) { timer in
            if charIndex < fullJobTitle.count {
                let index = fullJobTitle.index(fullJobTitle.startIndex, offsetBy: charIndex)
                visibleJobTitle += String(fullJobTitle[index])
                charIndex += 1
            } else {
                timer.invalidate()
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    startDeleting(fullJobTitle: fullJobTitle)
                }
            }
        }
    }
    
    func startDeleting(fullJobTitle: String) {
        Timer.scheduledTimer(withTimeInterval: typingSpeed, repeats: true) { deleteTimer in
            if !visibleJobTitle.isEmpty {
                visibleJobTitle.removeLast()
            } else {
                deleteTimer.invalidate()
                // Nächster Text nach kurzer Pause
                currentTextIndex = (currentTextIndex + 1) % HeaderView.header.jobTitles.count
                startTyping()
            }
        }
    }
}

#Preview {
    HeaderView()
}
