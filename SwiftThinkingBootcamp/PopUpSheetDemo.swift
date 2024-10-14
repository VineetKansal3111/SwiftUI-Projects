//
//  PopUpSheetDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 09/10/24.
//

import SwiftUI

struct PopUpSheetDemo: View {
    @State var showSheet : Bool = false;
    var body: some View {
        ZStack{
            Color.yellow
            VStack{
                Button("OPEN SHEET"){
                    showSheet.toggle()
                }
                .padding(30)
                
                Spacer()
            }
            // FullScreenCover
            .sheet(isPresented: $showSheet, content: {
              SecondScreenDemo()
            } )}
    }
}

struct SecondScreenDemo:View{
    @Environment(\.presentationMode) var back
    var body : some View{
        ZStack{
            Color.yellow
            VStack{
                Button(action: {
                    back.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                })
                .padding(30)
                
                Spacer()
            }
            }
    }
}
struct PopUpSheetDemo_Previews: PreviewProvider {
    static var previews: some View {
        PopUpSheetDemo()
        SecondScreenDemo()
    }
}
