//
//  Tab2ViewController.swift
//  Playground UIKit
//
//  Created by Marius Preikschat on 07.09.23.
//

import UIKit
import Combine

class Tab2ViewController: UIViewController {
    @IBOutlet weak var button: UIButton?
    @IBOutlet weak var label: UILabel?
    
    @Published var buttonEnabled: Bool = false

    // Save the cancellable subscription.
    private var subscribers: [AnyCancellable] = []
    private var switchSubscriber: AnyCancellable?
    
    @IBAction func clickButton(_ sender: Any) {
        print("clicked and toggled")
        label?.isHidden.toggle()
    }
    
    @IBAction func didSwitch(_ sender: UISwitch) {
        buttonEnabled = sender.isOn
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label?.isHidden = true
        button?.tintColor = .brown
        
        // MARK: Combine
        switchSubscriber = $buttonEnabled.sink { print("Received \($0)")
        }
        
        if let button {
            $buttonEnabled
                .receive(on: DispatchQueue.main)
                .assign(to: \.isEnabled, on: button)
                .store(in: &subscribers)
        }
    }
}

@available(iOS 17, *)
#Preview {
    Tab2ViewController()
}
