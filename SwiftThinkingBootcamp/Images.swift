//
//  Images.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 05/10/24.
//

import SwiftUI

struct Images: View {
    var body: some View {
        Image("chatapp")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 200,height: 200)
            //.scaledToFit()
           // .clipped()
            .cornerRadius(150)
    }
}

struct Images_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}
