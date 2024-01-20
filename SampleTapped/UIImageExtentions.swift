//
//  UIImageExtentions.swift
//  SampleTapped
//
//  Created by 天孝高俊 on 2024/01/20.
//

import UIKit

extension UIImage {
    func redraw() -> UIImage {
        let format = UIGraphicsImageRendererFormat()
        format.scale = 1
        return UIGraphicsImageRenderer(size: size, format: format)
            .image{context in draw(in: CGRect(origin: .zero, size: size))}
    }
}
