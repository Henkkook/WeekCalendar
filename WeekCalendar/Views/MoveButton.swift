//
//  MoveButton.swift
//  WeekCalendar
//
//  Created by Denis Kalugin on 24.02.2023.
//

import UIKit

class MoveButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(imageName: String) {
        self.init(type: .system)
        setImage(UIImage(systemName: imageName), for: .normal)
        
    }
   
    
    private func configure() {
        layer.cornerRadius = 10
        backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        tintColor = .black
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
}
