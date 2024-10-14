//
//  ExtractSubviewDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 08/10/24.
//

import SwiftUI

struct ExtractSubviewDemo: View {
    var body: some View {
        ZStack{
            HStack{
                ExtractDemeHere(title: "ttile1", title2: "title2",backgroundColor: .green)
                ExtractDemeHere(title: "another title1", title2: "another title2",backgroundColor: .blue)
            }
        }
    }
}

struct ExtractSubviewDemo_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewDemo()
    }
}

struct ExtractDemeHere: View {
    var title : String
    var title2 : String
    var backgroundColor : Color
    var body: some View {
        VStack{
            Text(title)
            Text(title2 )
        }
      
        .padding()
            .background(backgroundColor)
            .cornerRadius(20)
    }
}
