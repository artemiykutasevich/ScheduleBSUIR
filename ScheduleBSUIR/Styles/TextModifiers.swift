//
//  TextModifiers.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 28.03.22.
//

import SwiftUI

struct TitleStyle: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        Text(text)
            .font(.title2)
            .fontWeight(.bold)
            .foregroundColor(.primary)
    }
}

struct SubTitleStyle: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        Text(text)
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundColor(.secondary)
    }
}

struct BodyStyle: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        Text(text)
            .font(.body)
            .fontWeight(.bold)
            .foregroundColor(.primary)
    }
}

struct SubBodyStyle: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        Text(text)
            .font(.body)
            .fontWeight(.semibold)
            .foregroundColor(.secondary)
    }
}

extension Text {
    func titleStyle(text: String) -> some View {
        self.modifier(TitleStyle(text: text))
    }
    
    func subTitleStyle(text: String) -> some View {
        self.modifier(SubTitleStyle(text: text))
    }
    
    func bodyStyle(text: String) -> some View {
        self.modifier(BodyStyle(text: text))
    }
    
    func subBodyStyle(text: String) -> some View {
        self.modifier(SubBodyStyle(text: text))
    }
}
