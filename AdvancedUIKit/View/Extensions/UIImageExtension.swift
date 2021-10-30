//
//  UIImageExtension.swift
//  UIViewExtensions
//
//  Created by Diogo Infante on 30/10/21.
//

import UIKit

/// UIImage extensions.
extension UIImage {
    /// Initializers a UIImage from a give UIView.
    /// - Parameters: view: UIView to be converted as a image.
    /// - Returns: A UIImage from the UIView.
    convenience init(view: UIView) {
        UIGraphicsBeginImageContext(view.frame.size)
        view.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.init(cgImage: image!.cgImage!)
    }
    /// Saves respective image to the device library.
    func saveToLibrary() {
        UIImageWriteToSavedPhotosAlbum(self, self,
                            #selector(save(_ :didFinishSavingWithError:contextType:)), nil)
    }
    /// Object-C function selector of save image to library.
    @objc func save(_ image: UIImage, didFinishSavingWithError error: Error?, contextType: UnsafeRawPointer) {
        if error != nil {
            /// Unable to save image to photos
        } else {
            /// Saved image to photos
        }
    }
}
