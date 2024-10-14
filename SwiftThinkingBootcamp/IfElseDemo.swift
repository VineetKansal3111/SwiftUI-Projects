//
//  IfElseDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 08/10/24.
//

import SwiftUI

struct IfElseDemo: View {
    @State var showCircle : Bool = false;
    @State var showRectangle : Bool = false;
    var body: some View {
        VStack(spacing : 20){
            Button(action: {
                showCircle.toggle()
            }, label: {
                Text("Circle Button 1")
            })
            Button(action: {
                showRectangle.toggle()
            }, label: {
                Text("Rectangle Button 2")
            })
            if(showCircle == true){
                Circle().fill(Color.blue)
                    .frame(width: 40,height: 50)
            }
            if(showRectangle == true){
                Rectangle().fill(Color.blue)
                    .frame(width: 40,height: 50)
            }
            Spacer()
        }
    }
}

struct IfElseDemo_Previews: PreviewProvider {
    static var previews: some View {
        IfElseDemo()
    }
}
