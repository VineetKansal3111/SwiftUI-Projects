//
//  ButtonDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 08/10/24.
//

import SwiftUI
import BottomSheet

struct ButtonDemo: View {
    @State var title : String = "Press It";
    @State var isPresented : Bool = false;
    @State var selectedDetent: BottomSheet.PresentationDetent = .medium
    let onpress : String = "Button 1 Pressed"
    var body: some View {
        VStack(spacing: 20){
            Text(title)
                .font(.system(size: 30))
            
            Button("Button 1"){
                self.title = onpress
            }.accentColor(Color.red)
            
            
            Button(action: {
                self.title = "Button 2 pressed"
            }, label:{
                Text("Button 2"
                    .uppercased())
                .foregroundColor(Color.white)
                .font(.system(size: 30))
                .padding(20)
                .background(Color.blue.cornerRadius(30))
            });
            Button(action: {
                self.isPresented.toggle()
            } , label: {
                Circle()
                    .fill(Color.white)
                    .frame(width:100,height:100)
                    .shadow(radius: 10)
                    .overlay(
                        Image( systemName: "heart.fill")
                            .font(.largeTitle)
                    )
                   
            })
            Button(
                action: {
                self.title = "Finish Pressed"
                }, label:{Text("Finish".uppercased())
                        .font(.caption)
                        .bold()
                        .foregroundColor(Color.gray)
                        .padding()
                        .background(
                            Capsule().stroke(Color.gray,lineWidth: 1.0 )
                        )
            } )
        }
        .sheetPlus(
            isPresented: $isPresented,
            header: {Text("heading") },
            main: {
                EmptyView()
                    .presentationDetentsPlus(
                        [.height(244), .fraction(0.4), .medium, .large],
                        selection: $selectedDetent
                    )
            }
        )
    }
    
}

struct ButtonDemo_Previews: PreviewProvider {
    static var previews: some View {
        ButtonDemo()
    }
}
