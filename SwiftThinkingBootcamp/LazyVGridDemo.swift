//
//  LazyVGridDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 08/10/24.
//

import SwiftUI

struct LazyVGridDemo: View {
    let colums: [GridItem] = [
        GridItem(.flexible(),spacing:nil,alignment:nil),
        GridItem(.flexible(),spacing:nil,alignment:nil),
        GridItem(.flexible(),spacing:nil,alignment:nil)
    ]
 let section : String
    
    var body: some View {
        ScrollView{
            LazyVGrid(
                columns:colums,
                alignment: .center,
                spacing: 6,
                pinnedViews:[.sectionHeaders],
                content: {
                    Section(
                        header: Text(section)
                            .font(.system(size: 40))
                            .background(Color.red)
                            .padding()
                        ,content: {
                            ForEach(0..<14){index in
                                Rectangle()
                                    .fill(Color.pink)
                                    .frame(height:170)
                            }
                        })
                })
           
        }
    }
}

struct LazyVGridDemo_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            VStack{
                LazyVGridDemo(section: "Section1")
                
                LazyVGridDemo(section: "Section2")}
        }}
}
