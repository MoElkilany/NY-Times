//
//  MostPopularDetailsPresenter.swift
//  MyTask
//
//  Created by mohamed sayed on 12/10/20.
//

import Foundation
class MostPopularDetailsPresenter {
    
    let articlesListDetails: ResultResponse?
    
    private var view  : MostPopularDetailsProtocol?
    
    init(with data: ResultResponse?,with view: MostPopularDetailsProtocol?) {
        self.articlesListDetails = data
        self.view = view
    }
    
    func viewDidLoad(){
        
        view?.setAutherName(byline: articlesListDetails?.byline ?? "")
        view?.setType(type:articlesListDetails?.source ?? "")
        view?.setTitle(title:articlesListDetails?.title ?? "")
        view?.date(date: articlesListDetails?.updated?.convertToDisplayFormat() ?? "")
        view?.description(abstract: articlesListDetails?.abstract ?? "")
        view?.image(imageUrl: getImageUrl())

    }
    
    
    private func getImageUrl()->String{
        var imagaUrl = ""
        guard let newMedia = articlesListDetails?.media else {return "test"}
        
        for media in newMedia {
            guard let meta = media.mediaMetadata else {return "" }
            for url in  meta {
                imagaUrl = url.url ?? ""
            }
        }
        return imagaUrl
    }
    
    
}
