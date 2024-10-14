//
//  TextFieldDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 10/10/24.
//

import SwiftUI

struct TextFieldDemo: View {
    @State var textFieldtext : String = "";
    @State var dataArray : [String] = []
    var body: some View {
        VStack {
            TextField("Type Something here....",text: $textFieldtext)
               // .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .background(Color.gray.opacity(0.3).cornerRadius(10))
                .foregroundColor(Color.red)
            .font(.headline)
            Button(action: {
                saveText()
               
            }, label: {
                Text("Save".uppercased())
                    .padding()
                    .background(Color.blue.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
            })
            ForEach(dataArray, id:\.self){ data in
                Text(data)
            }
           
        }
    }
    func saveText(){
        dataArray.append(textFieldtext)
        
    }
}

struct TextFieldDemo_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldDemo()
    }
}
