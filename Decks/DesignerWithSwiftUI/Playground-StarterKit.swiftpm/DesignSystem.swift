import SwiftUI

let mbeGradient = LinearGradient(
    colors: [Color("AppGradientStartColor"), Color("AppGradientEndColor")],
    startPoint: .trailing,
    endPoint: .leading
)

extension Color {
    static let bnpp = Color("Bnpp")
    static let secondaryBackground = Color(uiColor: UIColor.secondarySystemGroupedBackground)
    static let searchFieldBackground = Color(uiColor: UIColor.tertiarySystemFill)
}


public struct SearchField: View {
    
    @State var text: String
    let placeholder = ""
    
    public var body: some View {
        TextField(placeholder, text: $text)
            .multilineTextAlignment(.leading)
            .submitLabel(.search)
            .padding(12)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .foregroundStyle(Color(uiColor: UIColor.tertiarySystemFill))
            )
    }
}

struct SearchField_Previews: PreviewProvider {
    static var previews: some View {
        SearchField(text: "toto")
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
