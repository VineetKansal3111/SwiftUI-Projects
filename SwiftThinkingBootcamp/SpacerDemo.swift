//
//  SpacerDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 07/10/24.
//

import SwiftUI

struct SpacerDemo: View {
    var body: some View {
        VStack(alignment:.center,content:{
                Rectangle()
                .fill(Color.blue)
                .frame(width: 100,height: 100)
            Spacer()
            Rectangle()
                .fill(Color.blue)
            .frame(width: 100,height: 100)
            
            
            
        } ).background(Color.pink)
    }
}

struct SpacerDemo_Previews: PreviewProvider {
    static var previews: some View {
        SpacerDemo()
    }
}
