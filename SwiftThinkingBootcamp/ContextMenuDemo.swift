//
//  ContextMenuDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 10/10/24.
//

import SwiftUI

struct ContextMenuDemo: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 10.0){
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use ontext")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(Color.blue)
        .contextMenu(menuItems: {
            Button(action: {}, label: {Label("Button1",systemImage: "flame.fill")})
            Button(action: {}, label: {Label("Button2",systemImage: "house.fill")})
            Text("Menu Item2")
            Text("Menu Item3")
        })
        // Click and hold krke Rakna ha
    }
}

struct ContextMenuDemo_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuDemo()
    }
}
