//
//  ActionSheetDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 10/10/24.
//

import SwiftUI

struct ActionSheetDemo: View {
    @State var showActionSheet : Bool = false
    @State var actionSheetOptions : ActionSheetOptions = .isOtherPost
   enum ActionSheetOptions{
        case isMyPost
       case isOtherPost
    }
    var body: some View {
        VStack{
            HStack{
                Circle()
                    .frame(width: 50,height: 50)
                Text("@username")
                Spacer()
                Button(action:{
                    showActionSheet.toggle()
                } , label: {
                    Image(systemName: "ellipsis")
                        .padding(20)
                })
                
            }
            Rectangle()
                .aspectRatio(1.0,contentMode: .fit)
        }.actionSheet(
            isPresented:$showActionSheet,
            content: {
                getActionSheet()
            })
        
    }
    func getActionSheet()->ActionSheet{
        
        let shareButton : ActionSheet.Button = .destructive(Text("Share"),action: {
            
        })
        let reportButton : ActionSheet.Button = .destructive(Text("Report"),action: {
            
        })
        let deleteButton : ActionSheet.Button = .destructive(Text("Delete"),action: {
            
        })
    
        let cancelButton : ActionSheet.Button = .cancel()
        let title = Text("What Would you like to do?")
        
        switch actionSheetOptions{
            case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons:[shareButton,reportButton,deleteButton,cancelButton]
            )
        case .isMyPost:
            return ActionSheet(
            title: title,
            message: nil,
            buttons: [shareButton,reportButton,deleteButton,cancelButton]
            )
        
            }
        //  return ActionSheet(title: Text("Here is Title"))
        
        
//        let button1 : ActionSheet.Button = .default(Text("Default"))
//        let button2 : ActionSheet.Button = .destructive(Text("Distuctive"))
//        let button3 : ActionSheet.Button = .cancel(Text("Cancel"))
//
//        return  ActionSheet(
//            title: Text("Here is Title"),
//            message: Text("this is message"),
//            buttons: [button1,button2,button3])
    }
}

struct ActionSheetDemo_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetDemo()
    }
}
