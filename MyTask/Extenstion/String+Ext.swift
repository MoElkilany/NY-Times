//
//  String+Ext.swift
//  MyTask
//
//  Created by mohamed sayed on 12/9/20.
//

import Foundation
extension String {
    func convertToDate()->Date? {
        
        let dateFormatter        = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        dateFormatter.locale     = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone   = .current
        return  dateFormatter.date(from: self)
    }

    func convertToDisplayFormat()->String {
        guard let data = self.convertToDate() else{return "N/A"}
        return data.convertToMonthYearFormat()
    }
    
    
    
   
    
    
}
