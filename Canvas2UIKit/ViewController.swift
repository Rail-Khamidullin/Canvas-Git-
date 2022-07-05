//
//  ViewController.swift
//  Canvas2UIKit
//
//  Created by Rail on 28.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let backgraund = UIImageView(image: #imageLiteral(resourceName: "pexels-roberto-nickson-2486168"))
    let lableText = UILabel(text: "Необходимый нам текст парам парам, парам парам!!!")
    let buttonOne = UIButton(title: "Кнопка один", backgroundColor: .black, titleColor: .white, isShadow: true)
    let buttonTwo = UIButton(title: "Кнопка два", backgroundColor: .black, titleColor: .white, isShadow: true)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .cyan
        configureConstrate()
    }
    func configureConstrate() {
//        Настройка фона
        backgraund.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(backgraund)
        NSLayoutConstraint.activate([
        backgraund.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        backgraund.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        backgraund.heightAnchor.constraint(equalToConstant: 900),
        backgraund.widthAnchor.constraint(equalToConstant: 415)
        ])
//        Настройка текста
        lableText.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(lableText)
        lableText.textColor = .white
        NSLayoutConstraint.activate([
        lableText.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            lableText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            lableText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
        ])
        lableText.numberOfLines = 0
        lableText.textAlignment = .justified
//        Настройка кнопок
        let stackView = UIStackView(arrangedSubviews: [buttonOne, buttonTwo])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        stackView.axis = .vertical
        stackView.spacing = 5
        
        NSLayoutConstraint.activate([
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            
        ])
    }
}



import SwiftUI

struct ViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let viewController = ViewController()
        
        func makeUIViewController(context: Context) -> ViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        }
    }
    
}

