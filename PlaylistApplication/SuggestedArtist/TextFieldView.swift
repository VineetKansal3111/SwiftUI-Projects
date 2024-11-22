//
//  TextFieldView.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 21/11/24.
//

import SwiftUI

struct  TextFieldView: View {
    @Binding var textFieldtext: String
    
    var body: some View {
        HStack{
            HStack{
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.white)
                TextField(text: $textFieldtext, label: {
                    Text("Search artist names")
                        .foregroundColor(.white)
                })
                
               
                if !textFieldtext.isEmpty{
                    Button( action: {
                        textFieldtext = ""
                    }, label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.white)
                    })
               }
            }
            .padding()
            .background(Color.gray)
            .cornerRadius(15)
            
        }
    }}
