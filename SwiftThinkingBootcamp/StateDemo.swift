//
//  StateDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 08/10/24.
//

import SwiftUI

struct StateDemo: View {
    @State var backgroundColor : Color = Color.green;
    @State var count : Int = 0
    @State var title : String = "Title"
    var body: some View {
        
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack(spacing:20) {
                Text(title)
                    .font(
                        .largeTitle
                    )
                Text("Count : \(count)")
                    .underline()
                    .font(
                        .largeTitle)
                HStack(spacing:20){
                    Button(
                        action: {
                            count = count+1
                            title = "Red +1"
                            if (count == 0) {
                                backgroundColor = .green
                            }
                            else{
                                backgroundColor = .red
                                
                            }
                        }, label: {
                            Text("Button 1")
                                .font(.largeTitle)
                                .padding()
                            
                        })
                    Button(action: {
                        if (count == 1) {
                            backgroundColor = .green
                        }else{
                            backgroundColor = .purple}
                        count = count-1
                        title = "Purple -1"
                    }, label: {Text("Button 2")
                            .font(.largeTitle)
                            .padding()
                    })
                    
                }
            }}
    }
}

struct StateDemo_Previews: PreviewProvider {
    static var previews: some View {
        StateDemo()
    }
}
