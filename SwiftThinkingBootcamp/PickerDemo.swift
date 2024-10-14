//
//  PickerDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 11/10/24.
//

import SwiftUI

struct PickerDemo: View {
    @State var selection : String = "1"
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.blue
    }
    var body: some View {
        VStack {
            HStack{
                Text("Age:")
                Text(selection)
            }
            // ARRAY PICKER VIDEO NO-39
            Picker(
                selection: $selection,
                label: Text("Picker"),
                content: {
                    //                    ForEach(16..<51, content: { number in
                    //                        HStack {
                    //                            Text("\(number)")
                    //                                .font(.headline)
                    //                                .foregroundColor(.red)
                    //                            .tag("\(number)")
                    //                            Image(systemName: "flame")
                    //                        }
                    //
                    //                    })
                    
                    Text("1").tag("1")
                    Text("2").tag("2")
                    Text("3").tag("3")
                    Text("4").tag("4")
                } )
            .pickerStyle(SegmentedPickerStyle())
        }
    }
}

struct PickerDemo_Previews: PreviewProvider {
    static var previews: some View {
        PickerDemo()
    }
}
