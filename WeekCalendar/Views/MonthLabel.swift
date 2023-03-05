//
//  MonthLabel.swift
//  WeekCalendar
//
//  Created by Denis Kalugin on 05.03.2023.
//

import UIKit

class MonthLabel: UILabel {
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        confige()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(aligment: NSTextAlignment) {
        self.init()
        textAlignment = aligment
        
        confige()
    }
        
    private func confige() {
        textColor = .gray
        translatesAutoresizingMaskIntoConstraints = false
    }
}
