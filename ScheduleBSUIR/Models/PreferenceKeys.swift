//
//  PreferenceKeys.swift
//  ScheduleBSUIR
//
//  Created by Artem Kutasevich on 27.03.22.
//

import SwiftUI

struct TabPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
