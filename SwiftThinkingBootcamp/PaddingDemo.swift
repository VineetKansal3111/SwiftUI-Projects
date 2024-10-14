//
//  PaddingDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 07/10/24.
//

import SwiftUI

struct PaddingDemo: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .padding(.bottom,60)
            .frame(width: 200,height: 200)
            .background(Color.red)
    }
}

struct PaddingDemo_Previews: PreviewProvider {
    static var previews: some View {
        PaddingDemo()
    }
}
