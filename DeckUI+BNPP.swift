//
//  DeckUI+BNPP.swift
//  presentations
//
//  Created by Pascal EDMOND on 21/06/2023.
//

import SwiftUI
import DeckUI

enum Presentations {}

extension Theme {
    public static let bnpp: Theme = Theme(
        background: Color.white,
        title: Foreground(
            color: Color(hex: "#008758"),
            font: Font.system(size: 60, weight: .bold, design: .default)
        ),
        subtitle: Foreground(
            color: Color(hex: "#008758"),
            font: Font.system(size: 40, weight: .light, design: .default).italic()
        ),
        body: Foreground(
            color: Color.black,
            font: Font.system(size: 40, weight: .regular, design: .default)
        ),
        code: CodeTheme(
            font: Font.system(size: 24, weight: .regular, design: .monospaced),
            plainTextColor: Color(red: 0, green: 0, blue: 0),
            backgroundColor: .clear,
            tokenColors: [
                .keyword: Color(red: 0.665,  green: 0.052, blue: 0.569),
                .string: Color(red: 0.77, green: 0.102, blue: 0.086),
                .type: Color(red: 0.247, green: 0.431, blue: 0.456),
                .call: Color(red:0.149, green: 0.278, blue: 0.294),
                .number: Color(red: 0.11, green: 0, blue: 0.81),
                .comment: Color(red: 0, green: 0.456, blue: 0),
                .property: Color(red: 0.247, green: 0.431, blue: 0.456),
                .dotAccess: Color(red: 0.11, green: 0, blue: 0.81),
                .preprocessing: Color(red: 0.391, green: 0.22, blue: 0.125)
            ]
        ),
        codeHighlighted: (Color.teal.opacity(0.5), Foreground(
            color: Color.black,
            font: Font.system(size: 30, weight: .regular, design: .monospaced)
        ))
    )
}

struct BNPPFooter: View {
    var body: some View {
        HStack {
            Image("bnpp-logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Spacer()
            Text("La banque d'un monde qui change")
                .font(Font.system(size: 40, weight: .bold, design: .default))
                .foregroundColor(.black)
        }
        .padding(.horizontal, 32)
        .padding(.bottom)
    }
}
