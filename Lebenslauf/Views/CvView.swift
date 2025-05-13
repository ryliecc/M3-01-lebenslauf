//
//  CvView.swift
//  Lebenslauf
//
//  Created by Rylie Castell on 13.05.25.
//

import SwiftUI

struct CvView: View {
    var body: some View {
        VStack {
            Text("Hi, my name is Rylie.")
                .font(.title)
            Text("Developer")
                .font(.largeTitle)
            Text("😎")
            Spacer()
        }
        
    }
}

#Preview {
    CvView()
}
