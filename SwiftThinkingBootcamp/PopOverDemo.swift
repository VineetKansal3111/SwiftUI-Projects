//
//  PopOverDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 09/10/24.
//

import SwiftUI

struct PopOverDemo: View {
    @State var openSheet : Bool = false;
    var body: some View {
        ZStack{
            Color.pink
            VStack{
                Button(action: {
                    openSheet.toggle()
                }, label: {
                    Text("OPEN SHEET")
                        .font(.largeTitle)
                })
                // METHOD - SHEET
                //.sheet(isPresented:$openSheet, content: {
                //   NewScreen() })
                
                //METHOD 2 -- TRANSITION
                //                ZStack{
                //                    if openSheet{
                //                        NewScreen(showNew: $openSheet )
                //                            .transition(.move(edge: .bottom))
                //                            .animation(.spring(), value: Color.pink)
                //                    }}.zIndex(2.0)
                // METHOD 3 -- ANIMATION OFF SET this does not works don't know why try method 2 , method1
                NewScreen(showNew: $openSheet )
                    .padding(.top ,100)
                    .offset(y: 303)
                .animation(.spring(),value:Color.blue)
            }
        }
       
        
        
        
}
}
struct NewScreen: View{
    @Environment (\.presentationMode) var back
    @Binding var showNew :Bool ;
    var body: some View{
        ZStack(alignment: .top){
            Color.yellow
            VStack{
                Button(action: {
                  //  back.wrappedValue.dismiss()
                    showNew.toggle()
                }, label: {
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                })
            }}
    }
}
struct PopOverDemo_Previews: PreviewProvider {
    static var previews: some View {
        PopOverDemo()
    }
}
