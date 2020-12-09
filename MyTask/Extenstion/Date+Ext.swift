//
//  Date+Ext.swift
//  MyTask
//
//  Created by mohamed sayed on 12/9/20.
//

import Foundation

extension Date {
        
    func convertToMonthYearFormat()->String {
        let dateFormatter =  DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.string(from: self)
    }
}



