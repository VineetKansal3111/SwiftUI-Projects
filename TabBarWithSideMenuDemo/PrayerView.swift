//
//  PrayerView.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 03/01/25.
//

import SwiftUI

struct PrayerView: View {
    @Binding var showMenu: Bool
    var body: some View {
        VStack{
            Button(action: {
                withAnimation{
                    showMenu.toggle()
                }
            }, label: {
                VStack{
                    HStack{
                        Image(systemName: "line.3.horizontal")
                            .resizable()
                            .foregroundColor(.primary)
                            .frame(width: 23,height: 20)
                    }
                    .padding()
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .frame(maxHeight: .infinity,alignment: .top)
                }})
            Text("Prayer View")
                .font(.system(size: 30,weight: .semibold))
                .foregroundColor(.pink)
                .frame(maxHeight: .infinity,alignment: .top)
        }
    }
}

struct PrayerView_Previews: PreviewProvider {
    static var previews: some View {
        PrayerView(showMenu: .constant(true))
    }
}
