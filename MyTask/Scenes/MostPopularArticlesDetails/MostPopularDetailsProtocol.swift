//
//  MostPopularDetailsProtocol.swift
//  MyTask
//
//  Created by mohamed sayed on 12/10/20.
//

import Foundation
 
protocol MostPopularDetailsProtocol {
    func setType(type:String)
    func setTitle(title:String)
    func setAutherName(byline:String)// byline
    func date(date:String)
    func image(imageUrl:String)
    func description(abstract:String)
    
}
