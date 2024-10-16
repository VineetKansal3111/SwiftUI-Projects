//
//  QuickBillDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 16/10/24.
//

import SwiftUI

struct QuickBillDemo: View {
    @State var searchField : String = "";
    var body: some View {
        
        VStack{
            // MARK : NAVBAR
            HStack(spacing: 10){
                Image(systemName: "line.3.horizontal")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                Text("Quick Bill")
                    .bold()
                    .font(.system(size: 27))
                    .foregroundColor(.white)
                Spacer()
                Image(systemName: "cart.fill")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
            }
            .background(Color.pink)
            // MARK : BUTTON & TEXTFIELD
            VStack{
                HStack{
                    Button(action:{} , label: {
                        Text("Category")
                            .font(.system(size:15))
                            .bold()
                            .padding(12)
                            .foregroundColor(.gray)
                            .background(Color.pink)
                            .cornerRadius(10)
                        
                    })
                    ZStack{
                        if searchField.isEmpty {
                                       Text("Search...")
                                .bold()
                                .foregroundColor(.gray)
                       
                                   }
                        TextField("",text:  $searchField)
                            .foregroundColor(.gray)
                            
                            .padding(.leading,30)
                            .padding(10)
                            .overlay(
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.white)
                                    .padding(.leading, 10),
                                alignment: .leading
                                
                            )
                            .overlay(
                            Image(systemName: "xmark")
                                .foregroundColor(.white)
                                .padding(.trailing, 10),
                            alignment: .trailing

                            )
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray, lineWidth: 2))
                        
                    }
                }
                // MARK : Cotagories
                
            }
            .padding(.horizontal)
           
            Spacer()
        } .background(Color.black)
        
        
        
        
    }
}

struct QuickBillDemo_Previews: PreviewProvider {
    static var previews: some View {
        QuickBillDemo()
    }
}
