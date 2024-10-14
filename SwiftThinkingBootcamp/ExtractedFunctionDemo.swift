//
//  ExtractedFunctionDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 08/10/24.
//

import SwiftUI
struct ExtractedFunctionDemo: View {

    @State var title : String = "Not Pressed";
    var body: some View {
        
        contentLayer
        
    }
    var contentLayer : some View {
        VStack(spacing:30){
            Text(title)
            
            Button(
                action: {
                    onPressed()
                }, label: {Text("Button")
                })
        }
    }
    
    func onPressed(){
        title = "Pressed Success"
    }
}

struct ExtractedFunctionDemo_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionDemo()
    }
}
