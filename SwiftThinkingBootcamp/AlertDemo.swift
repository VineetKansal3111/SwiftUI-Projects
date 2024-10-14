//
//  AlertDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 10/10/24.
//

import SwiftUI

struct AlertDemo: View {
    @State var showAlert : Bool = false;
    @State var backgroundColor : Color = .green;
    @State var alertType : MyAlerts? = nil;
   
//   @State var alertTitle : String = ""
//    @State   var alertdiscription : String = ""
    
    enum MyAlerts{
        case success
        case error
    }
    var body: some View {
        ZStack{
            backgroundColor
            VStack{
            Button("Click Here"){
                showAlert.toggle()
                alertType = .error
//                alertTitle = "Not Upload video"
//                alertdiscription = "not upload"
            }.padding(30)
                Button("Button 2"){
                    showAlert.toggle()
                    alertType = .success
//                    alertTitle = "succesfully upload video"
//                    alertdiscription = "video upload"
                }
            }
            .alert(isPresented: $showAlert , content: {
                getalert()
            })
        }}
    func getalert() -> Alert{
        
        switch alertType{
        case .error:
            return Alert(title:Text("There was an error"))
        case .success:
            return Alert(title: Text("it was successs"),message: nil,
                         dismissButton: .default(Text("ok"),action: {
                backgroundColor = .brown
                
            }))
        default:
            return Alert(title: Text("Error"))
        }
//       return Alert(title: Text(alertTitle),
//              message: Text(alertdiscription),
//              primaryButton: .destructive(Text("Delete"),action: {
//            backgroundColor = .yellow
//        }),
//              secondaryButton:.cancel()
//        )
    }
}

struct AlertDemo_Previews: PreviewProvider {
    static var previews: some View {
        AlertDemo()
    }
}
