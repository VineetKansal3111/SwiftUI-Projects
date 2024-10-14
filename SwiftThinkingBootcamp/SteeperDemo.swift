//
//  SteeperDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 11/10/24.
//

import SwiftUI

struct SteeperDemo: View {
    @State var stepperValue : Int = 10
    @State var widthIncrement : CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Steeper 1: \(stepperValue)" ,value: $stepperValue)
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncrement,height: 100)
            Stepper("Steeper 2:"){
                incrementWidth(amount: 10)
                //increment
            }onDecrement: {
                //decrement
                widthIncrement -= 10
            }
            
            
        }}
    func incrementWidth(amount:CGFloat){
        withAnimation(.easeInOut){
            widthIncrement += amount
        }
    }
}

struct SteeperDemo_Previews: PreviewProvider {
    static var previews: some View {
        SteeperDemo()
    }
}
