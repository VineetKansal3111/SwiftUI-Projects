//
//  ArrayDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 07/10/24.
//

import SwiftUI

struct ArrayDemo: View {
    
    let data: [String] = ["Hi","Hello","bye"]
    let myString: String = "Hello"
    
    var body: some View {
        
        VStack{
            
            ForEach(data.indices){index in
                Text("\(data[index]):\(index)")
            }
            ForEach(0..<5){
                index in
                Circle()
                    .fill(Color.pink)
                    .frame(width: 15,height: 15)
                  
            }
            
        }
    }
}

struct ArrayDemo_Previews: PreviewProvider {
    static var previews: some View {
        ArrayDemo()
    }
}
