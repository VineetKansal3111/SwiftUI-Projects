//
//  IfLetGuardDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 14/10/24.
//

import SwiftUI

struct IfLetGuardDemo: View {
    @State var currentUserID : String? = nil
    @State var displayText : String? = nil
    @State var isLoading : Bool = false
    var body: some View {
        NavigationView{
            VStack{
                Text("Here is safe coding Demo")
                if let text = displayText{
                    Text(text)
                        .font(.title)
                }
                if isLoading{
                    ProgressView()
                }
                Spacer()
            }
        }.navigationTitle("Safe Coding")
            .onAppear{
                loadData2()
            }
    }
    func loadData(){
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            displayText = "This is the new data!"
            isLoading = false
        }}
    // BOTH FUNTIONS AE PERFORM SAME THINGS
    func loadData2(){
        guard let userID = currentUserID else{
            displayText = "Error .no user id"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            displayText = "This is the new data!"
            isLoading = false
        }
    }
    
    
    struct IfLetGuardDemo_Previews: PreviewProvider {
        static var previews: some View {
            IfLetGuardDemo()
        }
    }
}
