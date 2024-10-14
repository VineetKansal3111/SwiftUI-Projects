//
//  ToggleDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 11/10/24.
//

import SwiftUI

struct ToggleDemo: View {
    @State var toggleisOn : Bool = false
    var body: some View {
        VStack {
            HStack{
                Text("Status:")
                    .font(.largeTitle)
                Text(toggleisOn ? "Yu'ar online" : "Yu'ar offline")
            }
            .font(.largeTitle)
            Toggle(isOn:  $toggleisOn , label: {
                Text("toggle")
                    
            }).toggleStyle(SwitchToggleStyle(tint: Color.purple))
            Spacer()
        }
    }
}

struct ToggleDemo_Previews: PreviewProvider {
    static var previews: some View {
        ToggleDemo()
    }
}
