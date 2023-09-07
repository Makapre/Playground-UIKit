//
//  SwiftUIView.swift
//  Playground UIKit
//
//  Created by Marius Preikschat on 07.09.23.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack {
            Color.pink
            Circle()
                .fill(.blue)
            Label("This is a SwiftUI view", systemImage: "viewfinder")
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
