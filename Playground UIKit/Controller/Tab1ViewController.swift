//
//  ViewController.swift
//  Playground UIKit
//
//  Created by Marius Preikschat on 07.09.23.
//

import UIKit
import SwiftUI

class Tab1ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc = UIHostingController(rootView: SwiftUIView())
        
        let swiftuiView = vc.view!
        swiftuiView.translatesAutoresizingMaskIntoConstraints = false

        addChild(vc)
        view.addSubview(swiftuiView)
        
        NSLayoutConstraint.activate([
            swiftuiView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftuiView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            swiftuiView.widthAnchor.constraint(equalTo: view.widthAnchor),
            swiftuiView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        
        vc.didMove(toParent: self)
    }
}

@available(iOS 17, *)
#Preview {
    Tab1ViewController()
}
