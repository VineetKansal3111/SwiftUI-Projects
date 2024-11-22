import SwiftUI

struct AppStorageView: View {
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
                .font(.largeTitle)
                .padding()
            
            if let name = currentUserName {
                Text("Current Name: \(name)")
            }
            
            Button("Save".uppercased()) {
                let name: String = "AMMi"
                currentUserName = name
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .padding()
    }
}

struct AppStorageView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageView()
    }
}

