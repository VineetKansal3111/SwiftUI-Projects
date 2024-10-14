//
//  OnTapGasturesDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 14/10/24.
//

import SwiftUI

struct OnTapGasturesDemo: View {
    @State var isSelected : Bool = false
    var body: some View {
        VStack(spacing:30){
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.purple)
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Gesture Detecter")
                    .padding()
                    .font(.headline)
                    .foregroundColor(.white)
                    .background(Color.pink)
                    .cornerRadius(20)
                    
            })
            Text("Gesture Detecter")
                .padding()
                .font(.headline)
                .foregroundColor(.white)
                .background(Color.pink)
                .cornerRadius(20)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
            
      // MARK: FOR DOUBLE CLICK
                .onTapGesture (
                count : 2,perform : {
                    isSelected.toggle()
                }
                )
            Spacer()
        }
        .padding(.horizontal,20)
    }
}

struct OnTapGasturesDemo_Previews: PreviewProvider {
    static var previews: some View {
        OnTapGasturesDemo()
    }
}
