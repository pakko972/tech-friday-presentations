//
//  swiftui_viewmodifier_presentationApp.swift
//  swiftui-viewmodifier-presentation
//
//  Created by Pascal EDMOND on 09/05/2023.
//

import SwiftUI
import DeckUI

@main
struct PresentationApp: App {

    let disableAnimations = true
    
    let showTitleBar = true
    
    let showCameraButton = false
    @State var showCamera = false
    
    @ViewBuilder
    var presentation: some View {
        Presentations.designWithSwiftUI(showCamera: showCamera)
    }
    
    var body: some Scene {
        WindowGroup {
            presentation
                .animation(disableAnimations ? nil : .default)
                .toolbar {
                    if showCameraButton {
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
        .windowStyle(.hiddenTitleBar)
        
        PresenterNotes()
    }
}
