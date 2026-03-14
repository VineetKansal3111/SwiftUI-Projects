//
//  CatsTextField.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 25/11/24.
//

import SwiftUI

struct CatTextField: View {
    @Binding var textFieldText: String
    var body: some View {
        HStack{
            TextField(text: $textFieldText , label: {
                Text("Search")
                    .font(.system(size: 18))
                    .foregroundColor(.black)
            })
           
            Image(systemName: "magnifyingglass")
                .foregroundColor(.black)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(30)
        .padding(.horizontal,51)
    }
}

//struct CatsTextField_Previews: PreviewProvider {
//    static var previews: some View {
//        CatsTextField(textFieldText: "")
//            .preferredColorScheme(.dark)
//    }
//}
