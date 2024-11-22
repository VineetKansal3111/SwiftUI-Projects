//
//  OnboardingView.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 25/10/24.
//

import SwiftUI

extension OnboardingView{
    
}
struct OnboardingView: View {
    /*
     Welcome Screen
     1 = add name
     2 = add age
     3 = add gender
     */
    @State var onboardingState : Int = 3
    @State var name : String = ""
    @State var age: Double = 50
    @State var gender : String = ""
    var body: some View {
        ZStack {
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                case 1:
                    addNameSection
                case 2:
                    addAgeSection
                case 3:
                    addGenderSection
                default : RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                }
            }
            VStack{
                Spacer()
                bottomButton
            }
            .padding(30)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.purple)
    }
}
extension OnboardingView {
    private var bottomButton: some View{
        Text("Sign in")
            .font(.headline)
            .foregroundColor(Color.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .onTapGesture {
                
            }
    }
    private var welcomeSection : some View{
        VStack(spacing:40){
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200,height: 200)
            Text("Find Anything Here")
                .font(.largeTitle)
                .fontWeight(.semibold)
               
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y:5)
                    ,alignment: .bottom
                )
        }
    }
   
    private var addNameSection : some View{
        VStack(spacing: 40){
           Spacer()
            Text("What's your name ")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
               
            TextField("Your name here ... " ,text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
            Spacer()
        }.padding(30)
    }
    private var addAgeSection : some View{
        VStack(spacing: 40){
           Spacer()
            Text("What's your age")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                Text("\(String(format: "%.0f",age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
            Spacer()
        }.padding(30)
    }
    private var addGenderSection: some View {
        VStack(spacing: 20){
           Spacer()
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            
            Picker(selection: $gender,
                   label :
                    Text("Select a gender")
                .font(.headline)
                .foregroundColor(.purple)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .cornerRadius(10),
                   content: {
                Text("1").tag(1)
                Text("2").tag(2)
            })
            .pickerStyle(MenuPickerStyle())
            Spacer()
            Spacer()
        }.padding(30)
    }
}
