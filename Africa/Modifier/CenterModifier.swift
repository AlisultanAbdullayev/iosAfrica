//
//  CenterModifier.swift
//  Africa
//
//  Created by Alisultan Abdullah on 7.02.2021.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        return HStack {
                Spacer()
                content
                Spacer()
            }
    }
}
