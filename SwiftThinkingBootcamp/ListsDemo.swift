//
//  ListsDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 09/10/24.
//

import SwiftUI

struct ListsDemo: View {
    @State var fruits : [String] = ["apples","Guava","peach","orange","avocado"];
    @State var Vegetables : [String] = ["potato","ginger","tomato","carrot"]
    var body: some View {
        NavigationView {
            List {
                Section(
                    header:
                        HStack{
                            Text("Fruits")     
                            Image(systemName: "flame.fill")
                                .foregroundColor(Color.blue)
                            
                        })
                {
                    ForEach(fruits,id:\.self){ fruits in
                        Text(fruits.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
                Section(header: Text("Vegetables")
                    .foregroundColor(Color.blue)){
                        ForEach(Vegetables,id:\.self){ Vegetables in
                            Text(Vegetables.capitalized)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                    }
                
            }
            
            .listStyle(SidebarListStyle())
            .accentColor(.purple)
            .navigationTitle("Grosery List")
            .navigationBarItems(leading: EditButton(),
                                trailing: Button("Add",action: {
                add()
            }))
        }
        .accentColor(.red)
    }
    //thus dhfbjg
    func delete(indexSet:IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    func move(indices:IndexSet,newOffset : Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
        Vegetables.move(fromOffsets: indices, toOffset: newOffset)
    }
    func add(){
        fruits.append("Coconut")
    }
}

struct ListsDemo_Previews: PreviewProvider {
    static var previews: some View {
        ListsDemo()
    }
}
