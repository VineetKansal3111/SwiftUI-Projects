//
//  ForEachLoops.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 07/10/24.
//

import SwiftUI

struct ForEachLoops: View {
    var body: some View {
        VStack{
            ForEach(0..<11){index in
                
                Text("ok: \(index)")
                
            }
        }
    }
}

struct ForEachLoops_Previews: PreviewProvider {
    static var previews: some View {
        ForEachLoops()
    }
}
