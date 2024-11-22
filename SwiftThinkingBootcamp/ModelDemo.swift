//
//  ModelDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 14/10/24.
//

import SwiftUI
struct UserModel : Identifiable{
    let id : String = UUID().uuidString
    let displayName : String
    let followerCount : Int
    let userName : String
    let isVarified : Bool
}

struct ModelDemo: View {
    @State var users : [UserModel] = [
        UserModel(displayName: "Vineet", followerCount: 4,userName:"Vin123", isVarified: true),
        UserModel(displayName: "ABC", followerCount: 2, userName: "ABC123", isVarified: false),
        UserModel(displayName: "CDE", followerCount: 20, userName: "CDE123", isVarified: true),
    ]
    var body: some View {
        NavigationView{
            List{
                ForEach(users){ user in
                    HStack(spacing: 20){
                        Circle()
                            .frame(width: 25,height: 25)
                        VStack {
                            Text(user.displayName)
                            Text("@\(user.userName)")
                        }
                        Spacer()
                        if(user.isVarified){
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        VStack{
                            Text("\(user.followerCount)")
                            Text("Followers")
                        }
                    }
                    .padding(.vertical , 10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
        
    }
}

struct ModelDemo_Previews: PreviewProvider {
    static var previews: some View {
        ModelDemo()
    }
}
