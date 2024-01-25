//
//  MakerView.swift
//  HW4.4UITablewCell
//
//  Created by Alisher Sultanov on 24/1/24.
//

import Foundation
import UIKit

class MakerView {
    
    static let shared = MakerView()
    
    func makerStackView(axis: NSLayoutConstraint.Axis,
                        distribution: UIStackView.Distribution = .fillEqually,
                        clipsToBounds: Bool = true,
                        backgroundColor: UIColor) -> UIStackView {
        let view = UIStackView()
        view.axis = axis
        view.distribution = distribution
        view.clipsToBounds = clipsToBounds
        view.backgroundColor = backgroundColor
        return view
    }
    
    func makerButton(setTitle: String,
                     for state: UIControl.State,
                     backgroundColor: UIColor,
                     tintColor: UIColor,
                     cornerRadius: CGFloat = 10) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(setTitle, for: state)
        button.backgroundColor = backgroundColor
        button.tintColor = tintColor
        button.layer.cornerRadius = cornerRadius
        return button
    }
    
    func makerLabel(textAlignment: NSTextAlignment = .left,
                    textColor: UIColor,
                    font: UIFont,
                    text: String) -> UILabel {
        let label = UILabel()
        label.textAlignment = textAlignment
        label.textColor = textColor
        label.font = font
        label.text = text
        return label
    }
    
    func makerImage(contentMode: UIView.ContentMode = .scaleAspectFill,
                    clipsToBounds: Bool = true,
                    cornerRadius: CGFloat,
                    imageName: String) -> UIImageView {
        let imageView = UIImageView()
        imageView.contentMode =  contentMode
        imageView.clipsToBounds = clipsToBounds
        imageView.layer.cornerRadius = cornerRadius
        imageView.image = UIImage(named: imageName)
        return imageView
    }
}
