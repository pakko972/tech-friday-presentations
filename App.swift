//
//  swiftui_viewmodifier_presentationApp.swift
//  swiftui-viewmodifier-presentation
//
//  Created by Pascal EDMOND on 09/05/2023.
//

import SwiftUI
@testable import DeckUI

@main
struct PresentationApp: App {
    
    let deck = Deck.preview
    @State var showCamera = false
    
    var body: some Scene {
        WindowGroup {
            Presenter(deck: deck, showCamera: showCamera)
                .toolbar {
                    ToolbarItemGroup {
                        Button {
                            showCamera = !showCamera
                        } label: {
                            Image(systemName: "camera.fill")
                        }
                    }
                }
        }
    }
}

struct PresentationApp_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 0) {
            let deck = Deck.preview
            let slide = deck.slides()[0]
            slide.buildView(theme: deck.theme)
                .frame(width: 1200, height: 800)
        }
    }
}
