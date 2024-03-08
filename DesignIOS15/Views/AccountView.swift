//
//  AccountView.swift
//  DesignIOS15
//
//  Created by Jiaqi Li on 2/29/24.
//

import SwiftUI

struct AccountView: View {
    @State var isDeleted = false
    @State var isPinned = false
    
    var body: some View {
        NavigationView {
            List {
                profile
                menu
                links
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
        }
    }
    
    var profile: some View{
        VStack(spacing: 8) {
            Image(systemName: "person.crop.circle.fill.badge.checkmark")
                .symbolVariant(.circle.fill)
                .font(.system(size: 32))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue, .blue.opacity(0.3))
                .padding()
                .background(Circle().fill(.ultraThinMaterial))
//                .background(
//                    HexagonView()
//                        .offset(x: -50, y: -100)
//                )
                .background(
                    BlobView()
                        .offset(x: 150, y: 0)
                        .scaleEffect(0.7)
                )
            Text("Jess Li")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/.weight(.semibold))
            HStack {
                Image(systemName: "location")
                    .imageScale(.small)
                Text("USA")
                    .foregroundColor(.secondary)
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .padding()
    }
    
    var menu: some View{
        Section {
            NavigationLink { HomeView() } label: {
                Label("Setting", systemImage: "gear")
            }
            NavigationLink { HomeView() } label: {
                Label("Billing", systemImage: "creditcard")
            }
            NavigationLink { HomeView() } label: {
                Label("Help", systemImage: "questionmark")
            }
        }
        .accentColor(.primary)///
        .listRowSeparatorTint(.blue)
        .listRowSeparator(.hidden)
    }
    
    var links: some View{
        Section {
            if !isDeleted {
                Link(destination: URL(string: "HTTPS://apple.com")!) {
                    HStack {
                        Label("Website", systemImage: "house")
                        Spacer()
                        Image(systemName: "link").foregroundColor(.secondary)
                    }
                }
                .swipeActions(edge: .leading, allowsFullSwipe: true){
                    Button(action: { isDeleted = true }) {
                        Label("Delete", systemImage: "trash")
                    }
                    .tint(.red)
                    pinButton
//                    Button { isPinned.toggle() } label: {
//                        if isPinned{
//                            Label("Unpin", systemImage: "pin.slash")
//                        } else {
//                            Label("Pin", systemImage: "pin")
//                        }
//                    }
//                    .tint(isPinned ? .gray : .yellow)
                }
            }
            Link(destination: URL(string: "HTTPS://youtube.com")!) {
                HStack {
                    Label("Youtube", systemImage: "tv")
                    Spacer()
                    Image(systemName: "link").foregroundColor(.secondary)
                }
            }
            .swipeActions {
                pinButton
            }
        }
        .accentColor(.primary)
        .listRowSeparator(.hidden)
    }
    
    var pinButton: some View {
        Button { isPinned.toggle() } label: {
            if isPinned{
                Label("Unpin", systemImage: "pin.slash")
            } else {
                Label("Pin", systemImage: "pin")
            }
        }
        .tint(isPinned ? .gray : .yellow)
    }
}

#Preview {
    AccountView()
}
