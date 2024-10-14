//
//  InitsDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 07/10/24.
//

import SwiftUI

struct InitEnumDemo: View {
    let count:Int
    let title: String
    let backgroundcolor : Color
    
    init(count: Int,fruit:Fruit) {
        
        self.count = count
        if (fruit == .apples)
        {
            self.title = "apples"
            self.backgroundcolor = .red
        }
        else{
            self.title = "orange"
            self.backgroundcolor = .orange
        }
        
    }
    enum Fruit{
        case apples
        case orange
    }
    
    var body: some View {
        VStack(
            alignment: .center,content:{
                Text("\(count)")
                    .underline()
                Text(title)
            })
        .frame(width: 100,height: 100)
        .background(backgroundcolor)
        
    }
    struct InitsDemo_Previews: PreviewProvider {
        static var previews: some View {
            HStack{
                InitEnumDemo(count: 100,fruit: .orange)
                InitEnumDemo(count: 10,fruit: .apples)
            }
        }
    }
    
}
