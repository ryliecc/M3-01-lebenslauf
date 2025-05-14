//
//  HeaderView.swift
//  Lebenslauf
//
//  Created by Rylie Castell on 14.05.25.
//

import SwiftUI

struct HeaderView: View {
    let header: Header = Header(userFirstName: "Rylie", jobTitle: "Developer", imageName: "Home_Page")
    
    var body: some View {
        VStack {
            Text("Hi, my name is \(header.userFirstName).")
                .font(.custom("AvenirNext-Medium", size: 22))
                .offset(x: -52)
            ZStack {
                Image(header.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 264.12, height: 286)
                    .offset(x: -90, y: 20)
                    .zIndex(1)
                Text(header.jobTitle.uppercased())
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
