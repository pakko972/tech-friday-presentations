import SwiftUI

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContentView: View {
    
    var body: some View {
        TabView {
            accountList.tabItem {
                Image(systemName: "square.dashed.inset.filled")
                Text("Comptes")
            }
            Text("2").tabItem {
                Image(systemName: "square.dashed.inset.filled")
                Text("Suivi / Validation")
            }
            Text("3").tabItem {
                Image(systemName: "square.dashed.inset.filled")
                Text("Profil")
            }
        }
        .tint(.bnpp)
    }
    
    var accountList: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
    }
}
