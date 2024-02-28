//
//  ContentView.swift
//  DesignIOS15
//
//  Created by Jiaqi Li on 2/26/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Spacer()
            Image("Logo 2")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 26.0, height: 26.0)
                .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
            Text("SwiftUI for IOS 15")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("20 sections - 3 hours")
                .font(.footnote)
                .fontWeight(.semibold)
            Text("Build an iOS app for iOS 15 with custom layouts, animations and ...")
                .font(.footnote)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
        }
        .padding(.all, 20.0)
        .frame(height: 350.0)
        .background(Color("Background"))
        .cornerRadius(/*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
        .shadow(radius: /*@START_MENU_TOKEN@*/20/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ContentView()
}
