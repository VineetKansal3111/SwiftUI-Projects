//
//  Icons.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 05/10/24.
//

import SwiftUI

struct Icons: View {
    var body: some View {
        Image( systemName: "externaldrive.badge.wifi")
          .resizable()
              //.aspectRatio(contentMode:.fit)
             //.scaledToFit()
            //.scaled
           // .font(
          //     .system(size:200)
         // )
            .clipped()
            
            .foregroundColor(Color.red)
            .frame(width: 100,height: 100)
    }
}

struct Icons_Previews: PreviewProvider {
    static var previews: some View {
        Icons()
    }
}
