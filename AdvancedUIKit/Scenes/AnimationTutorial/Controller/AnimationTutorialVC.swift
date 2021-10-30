//
//  ViewController.swift
//  UIViewExtensions
//
//  Created by Diogo Infante on 21/04/21.
//

import UIKit

class AnimationTutorialVC: BaseViewController {
    /// Animation Tutorial Scene
    let scene = AnimationTutorialView()
    /// View Did Load Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        /// Scene construction
        view.addSubview(scene)
        scene.setScene(root: view)
        /// Setup views to initial Conditions
        initialConditions()
        /// Run animations
        runAnimations()
    }
}
// MARK: - Animations
extension AnimationTutorialVC {
    /// Tier 0 - Initial Conditions
    fileprivate func initialConditions() {
        scene.square.disappear()
        scene.star.disappear()
    }
    /// Tier 1 - First Chain
    fileprivate func animate1(then completion: @escaping(Result<Void,Error>)->Void) {
        scene.circle.rotate(duration: 2, fromValue: -1, toValue: 1, repeatCount: 20) { result in
            if result {
                self.scene.circle.fadeOut(duration: 1, delay: 1, effect: .curveLinear) { result in
                    self.scene.square.fadeIn() { result in
                        self.scene.square.springAnimation(duration: 1, delay: 0, damping: 0.5, initialVelocity: 1, scale: 0.8, effect: .curveEaseInOut)
                        completion(.success(Void()))
                    }
                }
            }
        }
    }
    /// Tier 2 - Second Chain
    fileprivate func animate2() {
        scene.star.fadeIn()
        scene.star.translation(centerTo: scene.circle.center) { result in
            if result {
                self.scene.star.translation(originTo: self.view.center) { result in
                    if result {
                        self.scene.circle.fadeIn()
                        self.scene.circle.translation(centerTo: CGPoint(x: self.scene.square.frame.midX, y: self.scene.square.frame.maxY)) { result in
                            if result {
                                self.scene.circle.scaleBy(scaleX: 1.5)
                            }
                        }
                    }
                }
            }
        }
    }
    /// Run animations in chain
    fileprivate func runAnimations() {
        animate1() { result in
            switch result {
            case .success():
                self.animate2()
            case .failure(let error):
                dump(error)
            }
        }
    }
}
