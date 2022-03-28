//
//  ViewModifiers.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 28.03.22.
//

import SwiftUI

struct GraffitiStyle: ViewModifier {
    var cornerRadius: CGFloat
    var color: Color
    
    func body(content: Content) -> some View {
        content
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(.ultraThinMaterial)
                    .shadow(color: color, radius: 0, x: 4, y: 4)
            )
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .strokeBorder(lineWidth: 2, antialiased: true)
                    .foregroundColor(.black)
            )
            .padding(.leading)
            .padding(.trailing)
    }
}

extension View {
    func graffitiStyle(cornerRadius: CGFloat = 20, color: Color) -> some View {
        self.modifier(GraffitiStyle(cornerRadius: cornerRadius, color: color))
    }
}
