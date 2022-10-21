//
//  ViewController.swift
//  AnimatableCheckBox
//
//  Created by Bing Bing on 2022/10/7.
//

import UIKit

class ViewController: UIViewController {
    
    let checkbox = AnimatableCheckbox()
    
    let colors = UISegmentedControl()
    let animations = UISegmentedControl()
    let shapes = UISegmentedControl()
    let marks = UISegmentedControl()
    let slider = UISlider()
    private let stack = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(checkbox)
        view.addSubview(stack)
        
        checkbox.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(toggle)))
        checkbox.animation = .bounce
        
        let orange = UIAction(title: "Orange") { [checkbox] _ in
            checkbox.colorTheme.markColor = .systemOrange
            checkbox.colorTheme.tintColor = .systemOrange
        }
        colors.insertSegment(action: orange, at: 0, animated: false)
        let cyan = UIAction(title: "Cyan") { [checkbox] _ in
            checkbox.colorTheme.markColor = .systemCyan
            checkbox.colorTheme.tintColor = .systemCyan
        }
        colors.insertSegment(action: cyan, at: 1, animated: false)
        let pink = UIAction(title: "Pink") { [checkbox] _ in
            checkbox.colorTheme.markColor = .systemPink
            checkbox.colorTheme.tintColor = .systemPink
        }
        colors.insertSegment(action: pink, at: 2, animated: false)
        let brown = UIAction(title: "Brown") { [checkbox] _ in
            checkbox.colorTheme.markColor = .systemBrown
            checkbox.colorTheme.tintColor = .systemBrown
        }
        colors.insertSegment(action: brown, at: 3, animated: false)
        let indigo = UIAction(title: "Indigo") { [checkbox] _ in
            checkbox.colorTheme.markColor = .systemIndigo
            checkbox.colorTheme.tintColor = .systemIndigo
        }
        colors.insertSegment(action: indigo, at: 4, animated: false)
        let blue = UIAction(title: "Blue") { [checkbox] _ in
            checkbox.colorTheme.markColor = .systemBlue
            checkbox.colorTheme.tintColor = .systemBlue
        }
        colors.insertSegment(action: blue, at: 5, animated: false)
        let purple = UIAction(title: "Purple") { [checkbox] _ in
            checkbox.colorTheme.markColor = .systemPurple
            checkbox.colorTheme.tintColor = .systemPurple
        }
        colors.insertSegment(action: purple, at: 6, animated: false)
        colors.apportionsSegmentWidthsByContent = true
        colors.selectedSegmentIndex = 5
        
        let stroke = UIAction(title: "Stroke") { [checkbox] _ in
            checkbox.animation = .stroke
        }
        animations.insertSegment(action: stroke, at: 0, animated: false)
        let fill = UIAction(title: "Fill") { [checkbox] _ in
            checkbox.animation = .fill
        }
        animations.insertSegment(action: fill, at: 1, animated: false)
        let bounce = UIAction(title: "Bounce") { [checkbox] _ in
            checkbox.animation = .bounce
        }
        animations.insertSegment(action: bounce, at: 2, animated: false)
        animations.selectedSegmentIndex = 2
        
        let circle = UIAction(title: "Circle") { [checkbox] _ in
            checkbox.shape = .circle
        }
        shapes.insertSegment(action: circle, at: 0, animated: false)
        let square = UIAction(title: "Square") { [checkbox] _ in
            checkbox.shape = .square
        }
        shapes.insertSegment(action: square, at: 1, animated: false)
        shapes.selectedSegmentIndex = 0
        
        let tick = UIAction(title: "Tick") { [checkbox] _ in
            checkbox.mark = .tick
        }
        marks.insertSegment(action: tick, at: 0, animated: false)
        let radio = UIAction(title: "Radio") { [checkbox] _ in
            checkbox.mark = .radio
        }
        marks.insertSegment(action: radio, at: 1, animated: false)
        marks.selectedSegmentIndex = 0
        
        slider.addTarget(self, action: #selector(setLineWidth), for: .valueChanged)
        slider.minimumValue = 1.5
        slider.maximumValue = 10
        
        stack.addArrangedSubview(colors)
        stack.addArrangedSubview(animations)
        stack.addArrangedSubview(shapes)
        stack.addArrangedSubview(marks)
        stack.addArrangedSubview(slider)
        stack.axis = .vertical
        stack.spacing = 16
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        stack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        stack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let size: CGFloat = 100
        checkbox.frame = CGRect(x: view.center.x - size / 2, y: view.center.y - size / 2, width: size, height: size)
    }
    
    @objc func toggle() {
        checkbox.toggle()
    }
    
    @objc func setLineWidth(_ sender: UISlider) {
        checkbox.boxLineWidth = CGFloat(sender.value)
        checkbox.markLineWidth = CGFloat(sender.value)
    }
}

