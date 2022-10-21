//
//  Preview.swift
//  AnimatableCheckBox
//
//  Created by Bing Bing on 2022/10/17.
//

import SwiftUI

struct Preview: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        ViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}

struct Preview_Previews: PreviewProvider {
    static var previews: some View {
        Preview()
    }
}
