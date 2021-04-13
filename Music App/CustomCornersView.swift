//
//  CustomCornersView.swift
//  Music App
//
//  Created by mstudent on 13/04/2021.
//

import SwiftUI

struct CustomCornersView: Shape {
    var radius: CGFloat
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(CustomCornersView(radius: radius, corners: corners))
    }
}

