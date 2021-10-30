//
//  AppContainer.swift
//  UIViewExtensions
//
//  Created by Diogo Infante on 30/10/21.
//

import Foundation

protocol AnimationTutorialVCFactory {
    func makeAnimationTutorialVC() -> AnimationTutorialVC
}
class AppContainer {
}
extension AppContainer: AnimationTutorialVCFactory {
    func makeAnimationTutorialVC() -> AnimationTutorialVC {
        return AnimationTutorialVC()
    }
}
