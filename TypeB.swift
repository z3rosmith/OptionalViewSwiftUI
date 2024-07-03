//
//  TestView.swift
//  CustomerManagement
//
//  Created by Jinyoung Kim on 7/3/24.
//

import SwiftUI

// MARK: - Type B

extension View {
    @ViewBuilder
    func show(_ show: Bool) -> some View {
        if show == true {
            self
        }
    }
}

struct TestView2: View {
    var body: some View {
        Text("a2")
        Text("b2")
        Text("c2")
    }
}
