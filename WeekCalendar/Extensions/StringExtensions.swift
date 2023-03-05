//
//  StringExtensions.swift
//  WeekCalendar
//
//  Created by Denis Kalugin on 05.03.2023.
//

import Foundation


extension String {
    
    func changeWordEnding() -> String {
        
        guard let endChar = self.last else { return "" }
        
        var newString = self
        
        if endChar == "я" && newString.count > 3 {
            newString.removeLast ()
            newString += "ь"
        } else if newString.count == 3 {
            newString.removeLast ()
            newString += "й"
        } else {
            newString.removeLast()
        }
        return newString
    }
}
