//
//  CircleModifiers.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 28.03.22.
//

import SwiftUI

struct CircleStyle: ViewModifier {
    var color: Color
    
    func body(content: Content) -> some View {
        content
            .frame(width: 10, height: 10)
            .foregroundColor(color)
    }
}

extension Circle {
    func circleStyle(color: Color) -> some View {
        self.modifier(CircleStyle(color: color))
    }
}
