//
//  AnimationTutorialScene.swift
//  UIViewExtensions
//
//  Created by Diogo Infante on 30/10/21.
//

import UIKit

class AnimationTutorialView: UIView {
    /// Demonstration Views
    let circle = AssetView(.circle, subView: UIView())
    let square = AssetView(.square, subView: UIView())
    let star = AssetView(.star, subView: UIView())
    /// - Initializes a Animation Tutorial Scene.
    init() {
        super.init(frame: .zero)
        setupUI()
    }
    /// Adds constraints to circle - Hierarchy 1.
    fileprivate func circleConstraints() {
        circle.translatesAutoresizingMaskIntoConstraints = false
        circle.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        circle.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        circle.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.25).isActive = true
        circle.widthAnchor.constraint(equalTo: circle.heightAnchor).isActive = true
    }
    /// Adds constraints to square - Hierarchy 2.
    fileprivate func squareConstraints() {
        square.translatesAutoresizingMaskIntoConstraints = false
        square.centerXAnchor.constraint(equalTo: circle.centerXAnchor).isActive = true
        square.centerYAnchor.constraint(equalTo: circle.centerYAnchor).isActive = true
        square.heightAnchor.constraint(equalTo: circle.heightAnchor).isActive = true
        square.widthAnchor.constraint(equalTo: circle.heightAnchor).isActive = true
    }
    /// Adds constraints to hexagon - Hierarchy 3.
    fileprivate func hexagonConstraints() {
        star.translatesAutoresizingMaskIntoConstraints = false
        star.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        star.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        star.heightAnchor.constraint(equalTo: circle.heightAnchor, multiplier: 1.2).isActive = true
        star.widthAnchor.constraint(equalTo: circle.heightAnchor).isActive = true
    }
    /// Setups UI
    fileprivate func setupUI() {
        /// Hierarchy 1 - circle.
        self.addSubview(circle)
        circleConstraints()
        /// Hierarchy 2 - square.
        self.addSubview(square)
        squareConstraints()
        /// Hierarchy 3 - hexagon.
        self.addSubview(star)
        hexagonConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
