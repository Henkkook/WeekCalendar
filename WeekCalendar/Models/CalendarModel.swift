//
//  CalendarModel.swift
//  WeekCalendar
//
//  Created by Denis Kalugin on 05.03.2023.
//

import Foundation

class CalendarModel {
    
    private func getDaysArray(date: Date) -> [Date] {
        var daysArray = [Date]()
        for day in -10...10 {
            let day = date.getDateWithOffset(with: day)
            daysArray.append(day)
        }
        return daysArray
    }
    
    public func getWeekForCalendar(date: Date) -> [DateModel] {
        let dayArray = getDaysArray(date: date)
        let dateModelsArray = dayArray.map { $0.convertDateToModel() }
        return dateModelsArray
    }
}
