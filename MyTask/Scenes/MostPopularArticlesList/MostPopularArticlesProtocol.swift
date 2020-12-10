//
//  MostPopularArticlesProtocols.swift
//  MyTask
//
//  Created by mohamed sayed on 12/9/20.
//

import Foundation

protocol MostPopularArticlesProtocol {
    func showLoadingView()
    func dismissLoading()
    func getDataSuccesfully()
    func gerError(error:String)
}

protocol CellDataProtocol{
    func setUpCellTitle(title:String)
    func setUpCellDescription(description:String)
    func setUpCellImage(image:String)
    func setUpDateCell(date:String)


}

