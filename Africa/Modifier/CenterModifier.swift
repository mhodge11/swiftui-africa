//
//  CenterModifier.swift
//  Africa
//
//  Created by Micah Hodge on 7/14/23.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            
            content
            
            Spacer()
        }
    }
}
