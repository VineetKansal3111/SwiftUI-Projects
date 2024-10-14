//
//  Frames.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 05/10/24.
//

import SwiftUI

struct FramesDemo: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            .frame(minWidth: 0,
                   idealWidth:250,
                   maxWidth:.infinity,
                  minHeight: 0,
                   idealHeight: 250,
                   maxHeight: .infinity,
                   alignment: .center
            )
            .background(Color.blue)
        
    }
}

struct Frames_Previews: PreviewProvider {
    static var previews: some View {
        FramesDemo()
    }
}
