//
//  CustomView.swift
//  CoreGraphicsDrawing
//
//  Created by Kyaw Zay Ya Lin Tun on 5/15/22.
//

import UIKit

class CustomView: UIView {

    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }

        drawRectangleManually(for: context)
        drawRectangleWithBuiltInMethod(context)
    }

    fileprivate func drawRectangleManually(for context: CGContext) {
        let strokeDistance: CGFloat = bounds.midX * 0.5
        let centerPoint: CGPoint = .init(x: bounds.midX, y: bounds.midY)
        let lineWidth: CGFloat = 10.0

        let topLeading: CGPoint = .init(x: centerPoint.x - strokeDistance, y: centerPoint.y - strokeDistance)
        let topTraling: CGPoint = .init(x: centerPoint.x + strokeDistance, y: centerPoint.y - strokeDistance)
        let bottomLeading: CGPoint = .init(x: centerPoint.x - strokeDistance, y: centerPoint.y + strokeDistance)
        let bottomTraling: CGPoint = .init(x: centerPoint.x + strokeDistance, y: centerPoint.y + strokeDistance)

        context.move(to: topLeading)
        context.addLine(to: topTraling)
        context.addLine(to: bottomTraling)
        context.addLine(to: bottomLeading)
        context.addLine(to: topLeading)

        context.setStrokeColor(UIColor.red.cgColor)
        context.setLineWidth(lineWidth)
        context.setLineCap(.square)

        context.strokePath()
    }

    fileprivate func drawRectangleWithBuiltInMethod(_ context: CGContext) {
        let rectWidth: CGFloat = bounds.midX * 0.7
        context.addRect(.init(x: bounds.midX - (rectWidth / 2), y: bounds.midY - (rectWidth / 2), width: rectWidth, height: rectWidth))

        context.setFillColor(UIColor.blue.cgColor)

        context.fillPath()
    }
}
