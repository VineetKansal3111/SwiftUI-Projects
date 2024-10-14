//
//  SwiftUIView.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 08/10/24.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        
        ScrollView{
            LazyVStack{
                    ForEach(0..<10){ index in
                        ScrollView(.horizontal,showsIndicators :false,content:{
                                LazyHStack{
                                    ForEach(0..<10){index in
                                        
                                        RoundedRectangle(cornerRadius: 25)
                                            .fill(Color.white)
                                            .frame(width:200,height:150)
                                            .shadow(radius: 10)
                                            .padding()
                                            
                                    }
                                }
                            })
                        }
                
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
