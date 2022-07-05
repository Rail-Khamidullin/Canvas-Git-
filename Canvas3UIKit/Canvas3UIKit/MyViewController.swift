//
//  MyViewController.swift
//  Canvas3UIKit
//
//  Created by Rail on 01.03.2022.
//

import UIKit
import Foundation
import SwiftUI

class MyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
    }
}

struct PreviewViewController: PreviewProvider {
    static var previews: some View {
        ConteinerView().edgesIgnoringSafeArea(.all)
    }
    struct ConteinerView: UIViewControllerRepresentable {
        
        let viewController = MyViewController()
        
        func makeUIViewController(context: Context) -> some UIViewController {
            return viewController
        }
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        }
    }
}
