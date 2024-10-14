//
//  TextEditorDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 10/10/24.
//

import SwiftUI

struct TextEditorDemo: View {
    @State var textEditorText : String = "Starting Text"
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text: $textEditorText)
                
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                })
                Text(textEditorText
                     
                     
                )
            }
            .navigationTitle("Text Editor")
            .padding(50)
            .background(Color.green)
            
        }
    }
}

struct TextEditorDemo_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorDemo()
    }
}
