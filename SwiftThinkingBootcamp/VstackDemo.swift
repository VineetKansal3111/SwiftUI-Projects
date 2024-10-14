//
//  Vstack.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 05/10/24.
//

import SwiftUI

struct VstackDemo: View {
    var body: some View {
        VStack{
            ZStack(alignment: .bottom,content: {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100,height:100)
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 80,height:80)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 60,height:60)
            })
            HStack{
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100,height:100)
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100,height:100)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 100,height:100)
            }
            HStack(alignment:.center,spacing:20,content:{
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100,height:100)
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100,height:100)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 100,height:100)
            })
            
        }
        
        
    }
}

struct Vstack_Previews: PreviewProvider {
    static var previews: some View {
        VstackDemo()
    }
}
