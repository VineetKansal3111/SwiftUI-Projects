import SwiftUI

struct ExperienceFutureMusic: View {
    var body: some View {
        NavigationView {
            ZStack {
                AngularGradient(
                    gradient: Gradient(colors: [Color.purple, Color.black, Color.blue]),
                    center: .bottom,
                    angle: .degrees(90)
                )
                
                VStack {
                    Spacer()
                    Text("EXPERIENCE THE FUTURE OF MUSIC") 
                        .font(.system(size: 45))
                        .foregroundColor(.purple)
                        .multilineTextAlignment(.center)
                    NavigationLink(destination: VideoNext(), label: {
                        CustomButton(width: 100, height: 50,buttonColor:Color.pink, title: "Continue")
                    })
                    Spacer()
                    PlaylistAiLogoText()
                        .padding(.bottom)
                }
            }
            .edgesIgnoringSafeArea(.all)
            .navigationTitle("Music Experience") // Set a navigation title
        }
    }
}

struct ExperienceFutureMusic_Previews: PreviewProvider {
    static var previews: some View {
        ExperienceFutureMusic()
    }
}
