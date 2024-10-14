//
//  ViewModelDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 14/10/24.
//

import SwiftUI
struct FruitModel:Identifiable{
    let id : String = UUID().uuidString
    let name : String
    let count: Int
}
class FruitViewModel : ObservableObject{
    
    @Published var fruitArray : [FruitModel] = []
    
    func getFruits(){
        let fruit1 = FruitModel(name: "Oranges", count: 10)
        let fruit2 = FruitModel(name: "grap", count: 1)
        let fruit3 = FruitModel(name: "Apples", count: 10)
        fruitArray.append(fruit1)
        fruitArray.append(fruit2)
        fruitArray.append(fruit3)
    }
    
    func delete(indexSet:IndexSet){
        fruitArray.remove(atOffsets: indexSet)
    }
}

struct ViewModelDemo: View {
    //    @State var fruitArray : [FruitModel] = []
    @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel ()
    var body: some View {
        NavigationView{
            List{
                ForEach(fruitViewModel.fruitArray) { fruits in
                    HStack{
                        Text("\(fruits.count)")
                        Text(fruits.name)
                    }
                }.onDelete(perform: fruitViewModel.delete)
            }
            .listStyle(GroupedListStyle())
            .navigationBarItems(trailing: NavigationLink(
                destination: EnvironmentDemo(), label: {
                    Image(systemName: "arrow.right")})
                .font(.title))
            .navigationTitle("Fruits List")
            .onAppear{
                fruitViewModel.getFruits()
            }
        }
    }
}

struct EnvironmentDemo: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            Color.purple
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Go Back")
                    .font(.headline)
            })
        }
    }
}


struct ViewModelDemo_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelDemo()
    }
}
