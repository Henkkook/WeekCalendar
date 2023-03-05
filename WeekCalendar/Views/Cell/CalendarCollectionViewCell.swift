//
//  CalendarCollectionViewCell.swift
//  WeekCalendar
//
//  Created by Denis Kalugin on 24.02.2023.
//

import UIKit
 
class CalendarCollectionViewCell: UICollectionViewCell {
    
    private let dayOfWeekLabel: UILabel = {
        let label = UILabel()
        label.text = "Fri"
        label.textColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
  
    private let numberOfDayLabel: UILabel = {
        let label = UILabel()
        label.text = "24"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override var isSelected: Bool {
        didSet {
            if self.isSelected {
                backgroundColor = .orange
                dayOfWeekLabel.textColor = .white
                numberOfDayLabel.textColor = .white
            } else {
                backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
                dayOfWeekLabel.textColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
                numberOfDayLabel.textColor = .white
            }
        }
    }
    
    
    
    static let idCalendarCell = "idCalendarCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   

    private func setupView() {
        layer.cornerRadius = 10
        backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        
        addSubview(dayOfWeekLabel)
        addSubview(numberOfDayLabel)
    }
    
    public func configure(_ model: DateModel) {
        dayOfWeekLabel.text = model.dayOfweek
        numberOfDayLabel.text = model.numberOfDay
    }
}
//MARK: - Set Constraints

extension CalendarCollectionViewCell {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            dayOfWeekLabel.topAnchor.constraint(equalTo:topAnchor,constant:5),
            dayOfWeekLabel.centerXAnchor.constraint(equalTo:centerXAnchor),
            
            numberOfDayLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            numberOfDayLabel.centerXAnchor.constraint(equalTo:centerXAnchor)
        ])
    }
}
