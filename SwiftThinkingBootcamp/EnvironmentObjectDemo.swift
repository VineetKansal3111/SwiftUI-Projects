//
//  EnvironmentObjectDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 14/10/24.
//

import SwiftUI
class EnvironmentViewModel : ObservableObject{
    @Published var dataArray : [String] = []
    init(){
        getData()
    }
    func getData(){
        self.dataArray.append(contentsOf: ["iphone","ipad","imac","AppleWatch"])
    }
}

struct EnvironmentObjectDemo: View {
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    var body: some View {
       NavigationView{
           List{
               ForEach(viewModel.dataArray, id: \.self){ item in
                  NavigationLink(destination: Text("Destination"), label: {Text(item)})
               }
           }.navigationTitle("State Objects")
       }
    }
}
struct DetailView: View{
    let selectedItem:
    String
    var body:some View{
        ZStack{
            Color.orange.ignoresSafeArea()
            Text(selectedItem)
        }
    }
}

struct EnvironmentObjectDemo_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectDemo()
    }
}
