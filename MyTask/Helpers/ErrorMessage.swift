//
//  ErrorMessage.swift
//  MyTask
//
//  Created by mohamed sayed on 12/9/20.
//

import Foundation

enum ErrorMessage:String,Error {
    
    case unableToComplete  = "unable to complete your request .please try again"
    case invalidRespons    = "Invaild respons from the server .please try again"
    case invalidDate       = "the data receievd from the server is invaild.please try again"
    
    
}
