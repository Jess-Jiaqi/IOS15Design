//
//  PreferenceKeys.swift
//  DesignIOS15
//
//  Created by Jiaqi Li on 3/8/24.
//

import SwiftUI

struct ScrollPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
