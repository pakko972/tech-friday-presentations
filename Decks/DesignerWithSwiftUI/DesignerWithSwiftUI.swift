//
//  Deck+ViewModifier.swift
//  swiftui-viewmodifier-presentation
//
//  Created by Pascal EDMOND on 09/05/2023.
//

import SwiftUI
import DeckUI

extension Deck {
    static var designWithSwiftUI: Deck {
        return Deck(title: "Design With SwiftUI [21/06/2023]") {
            Slide(alignment: .center, comment: "This is sssssss") {
                Title("Introduction to `SwiftUI.ViewModifier`")
            }
            
            Slide(alignment: .center, comment: "This is zzzzzzzzzzzzz") {
                Title("Introduction to `SwiftUI.ViewModifier`")
            }
        }
    }
}
