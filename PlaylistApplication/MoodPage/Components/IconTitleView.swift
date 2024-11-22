//
//  iconTiitleView.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 21/11/24.
//

import SwiftUI

struct IconTitleView: View {
    
    var body: some View {
        HStack{
            Image(systemName: "arrowtriangle.backward.square")
            Spacer()
            Text("Create listen to music")
                .bold()
            Spacer()
        }
        .padding(.vertical,30)
        .padding(.horizontal)
        .font(.system(size: 20))
        .foregroundColor(.white)
        .frame(maxWidth: .infinity)
        .background(Color("app27283F"))
    }
}

struct IconTitleView_Previews: PreviewProvider {
    static var previews: some View {
        IconTitleView()
    }
}

