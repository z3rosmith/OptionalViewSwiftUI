//
//  TestView.swift
//  CustomerManagement
//
//  Created by Jinyoung Kim on 7/3/24.
//

import SwiftUI


// MARK: - Type A

protocol OptionalView where Self: View {
    associatedtype OptionalContent: View
    func show(_ show: Bool) -> Self.OptionalContent
}

extension OptionalView {
    typealias OptionalContent = View
    @ViewBuilder
    func show(_ show: Bool) -> some View {
        if show == true {
            self
        }
    }
}

struct TestView1: View, OptionalView {
    var body: some View {
        Text("a1")
        Text("b1")
        Text("c1")
    }
}
