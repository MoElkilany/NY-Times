//
//  MostPopularArticlesPresenter.swift
//  MyTask
//
//  Created by mohamed sayed on 12/9/20.
//

import Foundation

class MostPopularArticlesPresenter {
    
    private var view:MostPopularArticlesProtocol!
    var  articlesList = [ResultResponse]()
    
    let navigationTitle = "NEW YORK Times"
    
    init(view:MostPopularArticlesProtocol) {
        self.view = view
    }
    
    private func startApi(){
        view.showLoadingView()
        NetworkManager.shared.getMostPopularList { [weak self] (respons) in
            guard let self = self else {return}
            self.view.dismissLoading()
            switch respons {
            case .success(let articlesList):
                print("The success respons is = \(articlesList)")
                DispatchQueue.main.async {
                    self.articlesList = articlesList
                    self.view.getDataSuccesfully()
                }

            case .failure(let error):
                self.view.gerError(error: error.rawValue)
            }
        }
    }
    
    func refershTableView(){
        startApi()
    }
    
    func viewDidLoad(){
        startApi()
    }

    func numberOfArticles()->Int{
        return articlesList.count
    }
    
    func setDataToTableCell(CellProtocol:CellDataProtocol,index:Int){
        let imageUrl = getImageUrl(index: index)
        
        CellProtocol.setUpCellTitle(title: articlesList[index].title ?? "Doesn't exist Title 🧐")
        CellProtocol.setUpCellDescription(description: articlesList[index].abstract ?? "Doesn't exist abstract 🧐")
        CellProtocol.setUpCellImage(image: imageUrl)
        CellProtocol.setUpDateCell(date: articlesList[index].updated?.convertToDisplayFormat() ?? "\(Date())")
    }
    
    private func getImageUrl(index:Int)->String{
        var imagaUrl = ""
        guard let newMedia = articlesList[index].media else {return "test"}
        
        for media in newMedia {
            guard let meta = media.mediaMetadata else {return "" }
            for url in  meta {
                imagaUrl = url.url ?? ""
            }
        }
        return imagaUrl
    }
}
